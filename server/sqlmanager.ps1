[CmdletBinding()]
param([string]$ValidateSql, [string]$WorkerInput, [switch]$NoBrowser)

$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$ServerScriptPath = $MyInvocation.MyCommand.Path
$Url = "http://127.0.0.1:8787/"
$MaxRows = 100000
$MaxRequestBytes = 2MB

function Get-DbCredentials {
  $paths = @((Join-Path $ProjectRoot "cred\auth3.json"), (Join-Path $ProjectRoot "auth3.json"))
  foreach ($path in $paths) {
    if (-not (Test-Path -LiteralPath $path)) { continue }
    $credentials = ([IO.File]::ReadAllText($path, [Text.Encoding]::UTF8) | ConvertFrom-Json).db_credentials
    if (-not $credentials.host -or -not $credentials.service_name -or -not $credentials.user -or -not $credentials.password) {
      throw "Некоректний cred/auth3.json. Звірте його з auth3.example.json."
    }
    return $credentials
  }
  throw "Не знайдено cred/auth3.json. Створіть його з cred/auth3.example.json."
}

function Test-ReadOnlySql([string]$Sql) {
  if ([string]::IsNullOrWhiteSpace($Sql)) { throw "SQL порожній." }
  if ($Sql.Length -gt 1000000) { throw "SQL перевищує дозволений розмір." }
  $masked = [regex]::Replace($Sql, "'(?:''|[^'])*'", "''", [Text.RegularExpressions.RegexOptions]::Singleline)
  $masked = [regex]::Replace($masked, '"(?:""|[^"])*"', '""', [Text.RegularExpressions.RegexOptions]::Singleline)
  $masked = [regex]::Replace($masked, '/\*[\s\S]*?\*/', ' ')
  $masked = [regex]::Replace($masked, '--[^\r\n]*', ' ')
  $masked = $masked.Trim()
  if ($masked -match ';') {
    if ($masked -notmatch ';\s*$') { throw "Дозволено лише один SQL statement." }
    $withoutTerminator = [regex]::Replace($masked, ';\s*$', '').Trim()
    if ($withoutTerminator -match ';') { throw "Дозволено лише один SQL statement." }
    $masked = $withoutTerminator
    $Sql = [regex]::Replace($Sql.Trim(), ';\s*$', '')
  }
  if ($masked -notmatch '^(?is)(SELECT|WITH)\b') { throw "Дозволені лише SELECT або WITH." }
  $forbidden = '(?is)\b(INSERT|UPDATE|DELETE|MERGE|CREATE|DROP|ALTER|TRUNCATE|GRANT|REVOKE|BEGIN|DECLARE|EXEC(?:UTE)?|CALL|COMMIT|ROLLBACK|SAVEPOINT)\b'
  if ($masked -match $forbidden -or $masked -match '(?is)\bEXECUTE\s+IMMEDIATE\b' -or $masked -match '(?is)\bFOR\s+UPDATE\b') {
    throw "Запит містить заборонену операцію. Доступні лише read-only SELECT/WITH."
  }
  if ($masked -match '(?im)^\s*(SET|SPOOL|PROMPT|HOST|CONNECT|COLUMN|WHENEVER|EXIT)\b') { throw "SQL*Plus-команди заборонені." }
  if ($masked -match '^(?is)WITH\b' -and $masked -notmatch '(?is)\bSELECT\b') { throw "WITH-запит повинен завершуватися SELECT." }
  return $Sql.Trim()
}

if ($PSBoundParameters.ContainsKey("ValidateSql")) {
  try { [void](Test-ReadOnlySql $ValidateSql); Write-Output "VALID"; exit 0 }
  catch { Write-Error $_.Exception.Message; exit 1 }
}

function Find-SqlPlus {
  $command = Get-Command sqlplus.exe -ErrorAction SilentlyContinue
  if ($command) { return $command.Source }
  if ($env:ORACLE_HOME) {
    $candidate = Join-Path $env:ORACLE_HOME "bin\sqlplus.exe"
    if (Test-Path -LiteralPath $candidate) { return $candidate }
  }
  return $null
}

function Invoke-OracleOleDb([string]$Sql, $Credentials) {
  $source = "(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST={0})(PORT={1}))(CONNECT_DATA=(SERVICE_NAME={2})))" -f $Credentials.host, $Credentials.port, $Credentials.service_name
  $connectionString = "Provider=OraOLEDB.Oracle;Data Source=$source;User Id=$($Credentials.user);Password=$($Credentials.password);"
  $connection = New-Object System.Data.OleDb.OleDbConnection($connectionString)
  $connection.Open()
  try {
    $command = $connection.CreateCommand(); $command.CommandText = $Sql; $command.CommandTimeout = 0
    $reader = $command.ExecuteReader()
    try {
      $columns = for ($index = 0; $index -lt $reader.FieldCount; $index++) { $reader.GetName($index) }
      $rows = New-Object System.Collections.Generic.List[object]; $truncated = $false
      while ($reader.Read()) {
        if ($rows.Count -ge $MaxRows) { $truncated = $true; break }
        $row = for ($index = 0; $index -lt $reader.FieldCount; $index++) { $reader.GetValue($index) }
        [void]$rows.Add(@($row))
      }
      return @{ columns = @($columns); rows = $rows; truncated = $truncated }
    } finally { $reader.Close() }
  } finally { $connection.Close() }
}

function Invoke-OracleSqlPlus([string]$Sql, $Credentials) {
  $executable = Find-SqlPlus
  if (-not $executable) { throw "sqlplus.exe не знайдено" }
  $work = Join-Path $env:TEMP ("sqlmanager_" + [guid]::NewGuid().ToString("N")); [void](New-Item -ItemType Directory -Path $work)
  $spool = Join-Path $work "result.csv"; $script = Join-Path $work "query.sql"; $stdout = Join-Path $work "stdout.log"; $stderr = Join-Path $work "stderr.log"
  try {
    $connect = "{0}/{1}@//{2}:{3}/{4}" -f $Credentials.user, $Credentials.password, $Credentials.host, $Credentials.port, $Credentials.service_name
    $lines = @("CONNECT $connect", "SET ECHO OFF", "SET FEEDBACK OFF", "SET HEADING ON", "SET PAGESIZE 0", "SET LINESIZE 32767", "SET TRIMSPOOL ON", "SET TERMOUT OFF", "SET MARKUP CSV ON DELIMITER ';' QUOTE ON", "WHENEVER SQLERROR EXIT SQL.SQLCODE", "SPOOL $spool", $Sql, ";", "SPOOL OFF", "EXIT")
    [IO.File]::WriteAllLines($script, $lines, [Text.Encoding]::Default)
    $process = Start-Process -FilePath $executable -ArgumentList @("-S", "/nolog", "@$script") -Wait -PassThru -NoNewWindow -RedirectStandardOutput $stdout -RedirectStandardError $stderr
    if ($process.ExitCode -ne 0 -or -not (Test-Path -LiteralPath $spool)) {
      $message = ((Get-Content -LiteralPath $stdout -Raw -ErrorAction SilentlyContinue) + (Get-Content -LiteralPath $stderr -Raw -ErrorAction SilentlyContinue)).Trim()
      throw ("sqlplus: " + $message)
    }
    $records = @(Import-Csv -LiteralPath $spool -Delimiter ';' -Encoding Default)
    $columns = if ($records.Count) { @($records[0].PSObject.Properties.Name) } else { @() }
    $truncated = $records.Count -gt $MaxRows
    $rows = New-Object System.Collections.Generic.List[object]
    foreach ($record in ($records | Select-Object -First $MaxRows)) { [void]$rows.Add(@($columns | ForEach-Object { $record.$_ })) }
    return @{ columns = $columns; rows = $rows; truncated = $truncated }
  } finally { Remove-Item -LiteralPath $work -Recurse -Force -ErrorAction SilentlyContinue }
}

function Invoke-OracleQuery([string]$Sql) {
  $safeSql = Test-ReadOnlySql $Sql; $credentials = Get-DbCredentials
  try { return Invoke-OracleOleDb $safeSql $credentials } catch { $oleError = $_.Exception.Message }
  try { return Invoke-OracleSqlPlus $safeSql $credentials } catch { $plusError = $_.Exception.Message }
  throw "Не вдалося виконати запит. OraOLEDB: $oleError; sqlplus: $plusError"
}

function ConvertTo-CellText($Value) {
  if ($null -eq $Value -or $Value -is [DBNull]) { return "" }
  if ($Value -is [datetime]) { return $Value.ToString("yyyy-MM-dd HH:mm:ss") }
  return [string]$Value
}
function ConvertTo-XmlText($Value) { return [Security.SecurityElement]::Escape((ConvertTo-CellText $Value)) }

function ConvertTo-CsvBytes($Data) {
  $builder = New-Object Text.StringBuilder
  $writeRow = {
    param($Values)
    $cells = foreach ($value in $Values) { $text = ConvertTo-CellText $value; '"' + $text.Replace('"', '""') + '"' }
    [void]$builder.AppendLine(($cells -join ';'))
  }
  & $writeRow $Data.columns; foreach ($row in $Data.rows) { & $writeRow $row }
  return [Text.Encoding]::GetEncoding(1251).GetBytes($builder.ToString())
}

function Get-ExcelColumnName([int]$Number) {
  $name = ""; while ($Number -gt 0) { $Number--; $name = [char](65 + ($Number % 26)) + $name; $Number = [math]::Floor($Number / 26) }; return $name
}
function ConvertTo-XlsxBytes($Data) {
  Add-Type -AssemblyName System.IO.Compression.FileSystem
  $path = Join-Path $env:TEMP ("sqlmanager_" + [guid]::NewGuid().ToString("N") + ".xlsx")
  $archive = [IO.Compression.ZipFile]::Open($path, "Create")
  try {
    $entries = @{
      "[Content_Types].xml" = '<?xml version="1.0" encoding="UTF-8"?><Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types"><Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/><Default Extension="xml" ContentType="application/xml"/><Override PartName="/xl/workbook.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"/><Override PartName="/xl/worksheets/sheet1.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"/></Types>'
      "_rels/.rels" = '<?xml version="1.0" encoding="UTF-8"?><Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships"><Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="xl/workbook.xml"/></Relationships>'
      "xl/_rels/workbook.xml.rels" = '<?xml version="1.0" encoding="UTF-8"?><Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships"><Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet" Target="worksheets/sheet1.xml"/></Relationships>'
      "xl/workbook.xml" = '<?xml version="1.0" encoding="UTF-8"?><workbook xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"><sheets><sheet name="result" sheetId="1" r:id="rId1"/></sheets></workbook>'
    }
    $sheet = New-Object Text.StringBuilder; [void]$sheet.Append('<?xml version="1.0" encoding="UTF-8"?><worksheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main"><sheetData>')
    $allRows = @(@($Data.columns)) + @($Data.rows)
    for ($rowIndex = 0; $rowIndex -lt $allRows.Count; $rowIndex++) {
      [void]$sheet.Append('<row r="' + ($rowIndex + 1) + '">'); $columnIndex = 1
      foreach ($value in @($allRows[$rowIndex])) {
        $reference = (Get-ExcelColumnName $columnIndex) + ($rowIndex + 1)
        if ($rowIndex -gt 0 -and $value -is [ValueType] -and $value -isnot [datetime] -and $value -isnot [bool]) {
          $number = [Convert]::ToString($value, [Globalization.CultureInfo]::InvariantCulture); [void]$sheet.Append('<c r="' + $reference + '"><v>' + $number + '</v></c>')
        } else { [void]$sheet.Append('<c r="' + $reference + '" t="inlineStr"><is><t xml:space="preserve">' + (ConvertTo-XmlText $value) + '</t></is></c>') }
        $columnIndex++
      }
      [void]$sheet.Append('</row>')
    }
    [void]$sheet.Append('</sheetData></worksheet>'); $entries["xl/worksheets/sheet1.xml"] = $sheet.ToString()
    foreach ($name in $entries.Keys) { $entry = $archive.CreateEntry($name); $writer = New-Object IO.StreamWriter($entry.Open(), (New-Object Text.UTF8Encoding($false))); $writer.Write($entries[$name]); $writer.Dispose() }
  } finally { $archive.Dispose() }
  try { return [IO.File]::ReadAllBytes($path) } finally { Remove-Item -LiteralPath $path -Force -ErrorAction SilentlyContinue }
}

function Set-Cors($Context) {
  $origin = [string]$Context.Request.Headers["Origin"]
  if ($origin -eq "null" -or $origin -match '^https?://(127\.0\.0\.1|localhost):8787$') {
    $Context.Response.Headers["Access-Control-Allow-Origin"] = $origin
    $Context.Response.Headers["Vary"] = "Origin"
  }
}
function Send-Json($Context, [int]$Status, $Value) {
  $bytes = [Text.Encoding]::UTF8.GetBytes(($Value | ConvertTo-Json -Compress -Depth 8)); $Context.Response.StatusCode = $Status; $Context.Response.ContentType = "application/json; charset=utf-8"; Set-Cors $Context
  $Context.Response.OutputStream.Write($bytes, 0, $bytes.Length); $Context.Response.Close()
}
function Send-Bytes($Context, [byte[]]$Bytes, [string]$Type, [string]$Name, [bool]$Truncated) {
  $Context.Response.StatusCode = 200; $Context.Response.ContentType = $Type; Set-Cors $Context
  $Context.Response.Headers["Content-Disposition"] = 'attachment; filename="' + $Name + '"'
  $Context.Response.Headers["X-SQLManager-Truncated"] = $Truncated.ToString().ToLowerInvariant(); $Context.Response.Headers["X-SQLManager-Max-Rows"] = [string]$MaxRows
  $Context.Response.Headers["Access-Control-Expose-Headers"] = "Content-Disposition, X-SQLManager-Truncated, X-SQLManager-Max-Rows"
  $Context.Response.OutputStream.Write($Bytes, 0, $Bytes.Length); $Context.Response.Close()
}
function Send-StaticFile($Context, [string]$Path) {
  $types = @{ ".html" = "text/html; charset=utf-8"; ".js" = "text/javascript; charset=utf-8"; ".css" = "text/css; charset=utf-8"; ".json" = "application/json; charset=utf-8" }
  $bytes = [IO.File]::ReadAllBytes($Path); $extension = [IO.Path]::GetExtension($Path).ToLowerInvariant(); $Context.Response.StatusCode = 200
  $Context.Response.ContentType = if ($types.ContainsKey($extension)) { $types[$extension] } else { "application/octet-stream" }
  if ($extension -in @(".html", ".js", ".css")) { $Context.Response.Headers["Cache-Control"] = "no-cache, no-store, must-revalidate" }
  $Context.Response.OutputStream.Write($bytes, 0, $bytes.Length); $Context.Response.Close()
}

if ($WorkerInput) {
  $job = ([IO.File]::ReadAllText($WorkerInput, [Text.Encoding]::UTF8) | ConvertFrom-Json)
  try {
    $data = Invoke-OracleQuery ([string]$job.sql)
    $bytes = if ($job.format -eq "csv") { ConvertTo-CsvBytes $data } else { ConvertTo-XlsxBytes $data }
    [IO.File]::WriteAllBytes([string]$job.outputPath, $bytes)
    @{ ok = $true; truncated = [bool]$data.truncated } | ConvertTo-Json -Compress | Set-Content -LiteralPath ([string]$job.metaPath) -Encoding UTF8
    exit 0
  } catch {
    @{ ok = $false; error = $_.Exception.Message } | ConvertTo-Json -Compress | Set-Content -LiteralPath ([string]$job.metaPath) -Encoding UTF8
    exit 1
  }
}

function Remove-JobArtifacts($Job) {
  if (-not $Job) { return }
  Remove-Item -LiteralPath $Job.inputPath, $Job.outputPath, $Job.metaPath -Force -ErrorAction SilentlyContinue
}

function Stop-JobProcess($Job) {
  if ($Job -and $Job.process -and -not $Job.process.HasExited) {
    Start-Process -FilePath "taskkill.exe" -ArgumentList @("/PID", [string]$Job.process.Id, "/T", "/F") -Wait -NoNewWindow -ErrorAction SilentlyContinue | Out-Null
  }
}

function Get-JobById([string]$JobId) {
  if ([string]::IsNullOrWhiteSpace($JobId)) { return $null }
  return $script:Jobs[$JobId]
}

function Sync-JobState($Job) {
  if (-not $Job -or $Job.status -ne "running") { return $Job }
  if (-not $Job.process.HasExited) { return $Job }
  if (-not (Test-Path -LiteralPath $Job.metaPath)) {
    $Job.status = "failed"
    $Job.error = "Процес Oracle завершився без результату."
  } else {
    $meta = ([IO.File]::ReadAllText($Job.metaPath, [Text.Encoding]::UTF8) | ConvertFrom-Json)
    if ($meta.ok) {
      $Job.status = "completed"
      $Job.truncated = [bool]$meta.truncated
    } else {
      $Job.status = "failed"
      $Job.error = [string]$meta.error
    }
  }
  if ($script:ActiveJobId -eq $Job.id) { $script:ActiveJobId = $null }
  return $Job
}

function Start-ExportJob([string]$Sql, [string]$Format) {
  if ($script:ActiveJobId) { throw "Інший запит уже виконується. Спочатку зупиніть його." }
  $token = [guid]::NewGuid().ToString("N")
  $inputPath = Join-Path $env:TEMP ("sqlmanager_query_" + $token + ".json")
  $outputPath = Join-Path $env:TEMP ("sqlmanager_query_" + $token + ".bin")
  $metaPath = Join-Path $env:TEMP ("sqlmanager_query_" + $token + ".meta.json")
  @{ sql = $Sql; format = $Format; outputPath = $outputPath; metaPath = $metaPath } | ConvertTo-Json -Compress | Set-Content -LiteralPath $inputPath -Encoding UTF8
  $scriptArgument = '"' + $ServerScriptPath + '"'
  $inputArgument = '"' + $inputPath + '"'
  $process = Start-Process -FilePath "powershell.exe" -ArgumentList @("-NoProfile", "-ExecutionPolicy", "Bypass", "-File", $scriptArgument, "-WorkerInput", $inputArgument) -PassThru -WindowStyle Hidden
  $job = @{
    id = $token
    process = $process
    inputPath = $inputPath
    outputPath = $outputPath
    metaPath = $metaPath
    format = $Format
    status = "running"
    startedAt = [DateTime]::UtcNow
    error = $null
    truncated = $false
  }
  $script:Jobs[$token] = $job
  $script:ActiveJobId = $token
  return $job
}

function Test-OracleConnectionQuick() {
  $credentials = Get-DbCredentials
  return @{
    ok = $true
    database = "Oracle"
    user = $credentials.user
    connection = ($credentials.host + "/" + $credentials.service_name)
    oracleChecked = $false
  }
}

function Test-OracleConnectionFull() {
  $credentials = Get-DbCredentials
  [void](Invoke-OracleQuery "SELECT 1 AS ok FROM dual")
  return @{
    ok = $true
    database = "Oracle"
    user = $credentials.user
    connection = ($credentials.host + "/" + $credentials.service_name)
    oracleChecked = $true
  }
}

$script:Jobs = @{}
$script:ActiveJobId = $null
$listener = New-Object Net.HttpListener
$listener.Prefixes.Add($Url)
$listener.Start()
Write-Host "SQLManager: $Url"
if (-not $NoBrowser) { Start-Process $Url | Out-Null }

while ($listener.IsListening) {
  $context = $listener.GetContext()
  try {
    $path = [Uri]::UnescapeDataString($context.Request.Url.AbsolutePath)
    $query = $context.Request.QueryString
    if ($context.Request.HttpMethod -eq "OPTIONS") {
      Set-Cors $context
      $context.Response.StatusCode = 204
      $context.Response.Headers["Access-Control-Allow-Headers"] = "Content-Type"
      $context.Response.Headers["Access-Control-Allow-Methods"] = "GET, POST, OPTIONS"
      $context.Response.Close()
      continue
    }
    if ($path -eq "/api/health" -and $context.Request.HttpMethod -eq "GET") {
      try {
        $fullCheck = $query["full"] -eq "1"
        $busy = -not [string]::IsNullOrWhiteSpace($script:ActiveJobId)
        if ($fullCheck -and -not $busy) {
          Send-Json $context 200 (Test-OracleConnectionFull)
        } else {
          $payload = Test-OracleConnectionQuick
          if ($busy) { $payload.mode = "busy"; $payload.message = "Oracle-запит виконується. Підключення збережено." }
          else { $payload.mode = "ready" }
          Send-Json $context 200 $payload
        }
      } catch {
        Send-Json $context 503 @{ ok = $false; error = $_.Exception.Message }
      }
      continue
    }
    if ($path -eq "/api/query/export" -and $context.Request.HttpMethod -eq "POST") {
      if ($context.Request.ContentLength64 -lt 0 -or $context.Request.ContentLength64 -gt $MaxRequestBytes) {
        Send-Json $context 413 @{ error = "Запит завеликий." }
        continue
      }
      $reader = New-Object IO.StreamReader($context.Request.InputStream, [Text.Encoding]::UTF8)
      $body = ($reader.ReadToEnd() | ConvertFrom-Json)
      $format = ([string]$body.format).ToLowerInvariant()
      if ($format -notin @("xlsx", "csv")) {
        Send-Json $context 400 @{ error = "Формат має бути xlsx або csv." }
        continue
      }
      try {
        $sql = Test-ReadOnlySql ([string]$body.sql)
        $job = Start-ExportJob $sql $format
        Send-Json $context 202 @{ ok = $true; jobId = $job.id; status = "running" }
      } catch {
        Send-Json $context 400 @{ error = $_.Exception.Message }
      }
      continue
    }
    if ($path -eq "/api/query/status" -and $context.Request.HttpMethod -eq "GET") {
      $job = Sync-JobState (Get-JobById ([string]$query["jobId"]))
      if (-not $job) {
        Send-Json $context 404 @{ error = "Запит не знайдено." }
        continue
      }
      $elapsed = [math]::Max(0, [int]([DateTime]::UtcNow - $job.startedAt).TotalSeconds)
      Send-Json $context 200 @{
        ok = $true
        jobId = $job.id
        status = $job.status
        elapsedSeconds = $elapsed
        truncated = [bool]$job.truncated
        error = if ($job.error) { [string]$job.error } else { $null }
      }
      continue
    }
    if ($path -eq "/api/query/download" -and $context.Request.HttpMethod -eq "GET") {
      $job = Sync-JobState (Get-JobById ([string]$query["jobId"]))
      if (-not $job) {
        Send-Json $context 404 @{ error = "Запит не знайдено." }
        continue
      }
      if ($job.status -eq "running") {
        Send-Json $context 409 @{ error = "Запит ще виконується." }
        continue
      }
      if ($job.status -ne "completed") {
        Send-Json $context 400 @{ error = if ($job.error) { [string]$job.error } else { "Запит не завершився успішно." } }
        continue
      }
      if (-not (Test-Path -LiteralPath $job.outputPath)) {
        Send-Json $context 500 @{ error = "Файл результату не знайдено." }
        continue
      }
      $bytes = [IO.File]::ReadAllBytes($job.outputPath)
      $stamp = Get-Date -Format "yyyyMMdd_HHmmss"
      if ($job.format -eq "csv") {
        Send-Bytes $context $bytes "text/csv; charset=windows-1251" ("sqlmanager_$stamp.csv") ([bool]$job.truncated)
      } else {
        Send-Bytes $context $bytes "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" ("sqlmanager_$stamp.xlsx") ([bool]$job.truncated)
      }
      Remove-JobArtifacts $job
      $script:Jobs.Remove($job.id) | Out-Null
      continue
    }
    if ($path -eq "/api/query/cancel" -and $context.Request.HttpMethod -eq "POST") {
      $reader = New-Object IO.StreamReader($context.Request.InputStream, [Text.Encoding]::UTF8)
      $payloadText = $reader.ReadToEnd()
      $requestedId = $null
      if ($payloadText) {
        try { $requestedId = [string](($payloadText | ConvertFrom-Json).jobId) } catch {}
      }
      $jobId = if ($requestedId) { $requestedId } else { $script:ActiveJobId }
      $job = Get-JobById $jobId
      if (-not $job -or $job.status -ne "running") {
        Send-Json $context 409 @{ ok = $false; error = "Активного запиту немає." }
        continue
      }
      Stop-JobProcess $job
      $job.status = "failed"
      $job.error = "Запит зупинено користувачем."
      if ($script:ActiveJobId -eq $job.id) { $script:ActiveJobId = $null }
      Remove-JobArtifacts $job
      $script:Jobs.Remove($job.id) | Out-Null
      Send-Json $context 200 @{ ok = $true; message = "Запит зупинено." }
      continue
    }
    if ($path.StartsWith("/api/")) {
      Send-Json $context 404 @{ error = "API endpoint не знайдено." }
      continue
    }
    if ($path -eq "/") { $path = "/index.html" }
    $relative = $path.TrimStart('/').Replace('/', [IO.Path]::DirectorySeparatorChar)
    $file = [IO.Path]::GetFullPath((Join-Path $ProjectRoot $relative))
    $rootPrefix = [IO.Path]::GetFullPath($ProjectRoot) + [IO.Path]::DirectorySeparatorChar
    if (-not $file.StartsWith($rootPrefix, [StringComparison]::OrdinalIgnoreCase) -or -not (Test-Path -LiteralPath $file -PathType Leaf)) {
      Send-Json $context 404 @{ error = "Файл не знайдено." }
      continue
    }
    Send-StaticFile $context $file
  } catch {
    try { Send-Json $context 400 @{ error = $_.Exception.Message } } catch {}
  }
}
