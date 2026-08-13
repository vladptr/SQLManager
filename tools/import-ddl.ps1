param(
  [string[]]$InputFiles = @("rzo_schema_4.sql", "rzo_schema_5.sql"),
  [string]$OutputFile = "data/physical-schema.generated.js"
)

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot

function Normalize-Name([string]$value) {
  return ($value -replace '"', '').Trim().ToUpperInvariant()
}

function Get-Names([string]$value) {
  return [regex]::Matches($value, '"([^\"]+)"') | ForEach-Object { Normalize-Name $_.Groups[1].Value }
}

function Split-Definitions([string]$body) {
  $items = New-Object System.Collections.Generic.List[string]
  $start = 0; $depth = 0; $quoted = $false; $single = $false
  for ($i = 0; $i -lt $body.Length; $i++) {
    $ch = $body[$i]
    if ($ch -eq "'" -and -not $quoted) { $single = -not $single; continue }
    if ($ch -eq '"' -and -not $single) { $quoted = -not $quoted; continue }
    if ($quoted -or $single) { continue }
    if ($ch -eq '(') { $depth++ }
    elseif ($ch -eq ')') { $depth-- }
    elseif ($ch -eq ',' -and $depth -eq 0) {
      $items.Add($body.Substring($start, $i - $start).Trim())
      $start = $i + 1
    }
  }
  $items.Add($body.Substring($start).Trim())
  return $items
}

$tables = @{}
$loadedSchemas = New-Object System.Collections.Generic.HashSet[string]

foreach ($relativeFile in ($InputFiles | Sort-Object)) {
  $path = Join-Path $root $relativeFile
  $text = [IO.File]::ReadAllText($path, [Text.Encoding]::UTF8)
  $tableMatches = [regex]::Matches($text, 'CREATE\s+TABLE\s+"([^"]+)"\."([^"]+)"\s*\((.*?)(?=\r?\n\s*(?:COMMENT\s+ON|CREATE\s+(?:GLOBAL\s+TEMPORARY\s+)?TABLE|ALTER\s+TABLE|--\s+DDL\s+for\s+Table)|\z)', 'IgnoreCase,Singleline')
  foreach ($match in $tableMatches) {
    $schema = Normalize-Name $match.Groups[1].Value
    $name = Normalize-Name $match.Groups[2].Value
    [void]$loadedSchemas.Add($schema)
    $fullName = "$schema.$name"
    $columns = New-Object System.Collections.Generic.List[object]
    $inlineChecks = New-Object System.Collections.Generic.List[object]
    $rawBody = $match.Groups[3].Value
    $depth = 1; $quoted = $false; $single = $false; $closeIndex = -1
    for ($bodyIndex = 0; $bodyIndex -lt $rawBody.Length; $bodyIndex++) {
      $bodyChar = $rawBody[$bodyIndex]
      if ($bodyChar -eq "'" -and -not $quoted) { $single = -not $single; continue }
      if ($bodyChar -eq '"' -and -not $single) { $quoted = -not $quoted; continue }
      if ($quoted -or $single) { continue }
      if ($bodyChar -eq '(') { $depth++ }
      elseif ($bodyChar -eq ')') { $depth--; if ($depth -eq 0) { $closeIndex = $bodyIndex; break } }
    }
    if ($closeIndex -lt 0) { throw "Cannot find end of CREATE TABLE $fullName" }
    $body = $rawBody.Substring(0, $closeIndex)
    foreach ($definition in (Split-Definitions $body)) {
      if ($definition -notmatch '^\s*"([^"]+)"\s+(.+)$') { continue }
      $columnName = Normalize-Name $Matches[1]
      $rest = $Matches[2].Trim()
      $typeMatch = [regex]::Match($rest, '^([A-Z][A-Z0-9_ ]*?)(?:\s*\((\d+)(?:\s*,\s*(\d+))?\))?(?=\s+(?:DEFAULT|NOT\s+NULL|NULL|CONSTRAINT|CHECK|ENABLE|DISABLE)|$)', 'IgnoreCase')
      if (-not $typeMatch.Success) { throw "Cannot parse column $fullName.$columnName from: $rest" }
      $type = ($typeMatch.Groups[1].Value -replace '\s+', ' ').Trim().ToUpperInvariant()
      $first = if ($typeMatch.Groups[2].Success) { [int]$typeMatch.Groups[2].Value } else { $null }
      $second = if ($typeMatch.Groups[3].Success) { [int]$typeMatch.Groups[3].Value } else { $null }
      $length = if ($type -match 'CHAR|RAW') { $first } else { $null }
      $precision = if ($type -eq 'NUMBER') { $first } else { $null }
      $scale = if ($type -eq 'NUMBER') { $second } else { $null }
      $defaultValue = $null
      $defaultMatch = [regex]::Match($rest, '\bDEFAULT\s+(.+?)(?=\s+NOT\s+NULL|\s+NULL|\s+CONSTRAINT|\s+CHECK|$)', 'IgnoreCase')
      if ($defaultMatch.Success) { $defaultValue = $defaultMatch.Groups[1].Value.Trim() }
      $columns.Add([ordered]@{
        name = $columnName; type = $type; length = $length; precision = $precision; scale = $scale
        nullable = ($rest -notmatch '\bNOT\s+NULL\b'); defaultValue = $defaultValue; comment = $null; sourceFile = $relativeFile
      })
      $checkMatch = [regex]::Match($rest, '\bCHECK\s*\((.+)\)', 'IgnoreCase,Singleline')
      if ($checkMatch.Success) { $inlineChecks.Add([ordered]@{ name = $null; expression = $checkMatch.Groups[1].Value.Trim(); sourceFile = $relativeFile }) }
    }
    $tables[$fullName] = [ordered]@{
      id = $fullName.ToLowerInvariant(); schema = $schema; name = $name; fullName = $fullName
      defaultAlias = ($name -replace '[^A-Z0-9]', '').Substring(0, [Math]::Min(6, ($name -replace '[^A-Z0-9]', '').Length)).ToLowerInvariant()
      columns = @($columns | ForEach-Object { $_ }); primaryKey = $null; uniqueKeys = @(); foreignKeys = @(); checks = @($inlineChecks | ForEach-Object { $_ })
      comments = [ordered]@{ table = $null }; sourceFile = $relativeFile
    }
  }

  foreach ($match in [regex]::Matches($text, 'COMMENT\s+ON\s+TABLE\s+"([^"]+)"\."([^"]+)"\s+IS\s+''((?:''''|[^''])*)''\s*;', 'IgnoreCase,Singleline')) {
    $key = "$(Normalize-Name $match.Groups[1].Value).$(Normalize-Name $match.Groups[2].Value)"
    if ($tables.ContainsKey($key)) { $tables[$key].comments.table = $match.Groups[3].Value.Replace("''", "'") }
  }
  foreach ($match in [regex]::Matches($text, 'COMMENT\s+ON\s+COLUMN\s+"([^"]+)"\."([^"]+)"\."([^"]+)"\s+IS\s+''((?:''''|[^''])*)''\s*;', 'IgnoreCase,Singleline')) {
    $key = "$(Normalize-Name $match.Groups[1].Value).$(Normalize-Name $match.Groups[2].Value)"
    $columnName = Normalize-Name $match.Groups[3].Value
    if ($tables.ContainsKey($key)) {
      $column = $tables[$key].columns | Where-Object { $_.name -eq $columnName } | Select-Object -First 1
      if ($column) { $column.comment = $match.Groups[4].Value.Replace("''", "'") }
    }
  }
}

foreach ($relativeFile in ($InputFiles | Sort-Object)) {
  $path = Join-Path $root $relativeFile
  $text = [IO.File]::ReadAllText($path, [Text.Encoding]::UTF8)
  $constraintPattern = 'ALTER\s+TABLE\s+"([^"]+)"\."([^"]+)"\s+ADD\s+CONSTRAINT\s+"([^"]+)"\s+(PRIMARY\s+KEY|UNIQUE|FOREIGN\s+KEY|CHECK)\s*(?:\((.*?)\))?(.*?);'
  foreach ($match in [regex]::Matches($text, $constraintPattern, 'IgnoreCase,Singleline')) {
    $key = "$(Normalize-Name $match.Groups[1].Value).$(Normalize-Name $match.Groups[2].Value)"
    if (-not $tables.ContainsKey($key)) { continue }
    $name = Normalize-Name $match.Groups[3].Value
    $kind = ($match.Groups[4].Value -replace '\s+', ' ').ToUpperInvariant()
    $columns = @(Get-Names $match.Groups[5].Value)
    $tail = $match.Groups[6].Value
    if ($kind -eq 'PRIMARY KEY') {
      $tables[$key].primaryKey = [ordered]@{ name = $name; columns = $columns; sourceFile = $relativeFile }
    } elseif ($kind -eq 'UNIQUE') {
      $tables[$key].uniqueKeys += [ordered]@{ name = $name; columns = $columns; sourceFile = $relativeFile }
    } elseif ($kind -eq 'CHECK') {
      $expression = if ($match.Groups[5].Success) { $match.Groups[5].Value.Trim() } else { $tail.Trim() }
      $tables[$key].checks += [ordered]@{ name = $name; expression = $expression; sourceFile = $relativeFile }
    } elseif ($kind -eq 'FOREIGN KEY') {
      $reference = [regex]::Match($tail, 'REFERENCES\s+"([^"]+)"\."([^"]+)"\s*\((.*?)\)', 'IgnoreCase,Singleline')
      if (-not $reference.Success) { throw "Cannot parse FK $name on $key" }
      $target = "$(Normalize-Name $reference.Groups[1].Value).$(Normalize-Name $reference.Groups[2].Value)"
      $tables[$key].foreignKeys += [ordered]@{
        name = $name; columns = $columns; referencedTable = $target; referencedColumns = @(Get-Names $reference.Groups[3].Value)
        unresolvedExternal = $false; sourceFile = $relativeFile
      }
    }
  }
}

$orderedTables = @($tables.Values | Sort-Object fullName)
$joins = New-Object System.Collections.Generic.List[object]
foreach ($table in $orderedTables) {
  foreach ($fk in $table.foreignKeys) {
    $unresolved = -not $tables.ContainsKey($fk.referencedTable)
    $fk.unresolvedExternal = $unresolved
    $conditions = for ($i = 0; $i -lt $fk.columns.Count; $i++) {
      [ordered]@{ leftCol = $fk.columns[$i]; rightCol = $fk.referencedColumns[$i] }
    }
    $joins.Add([ordered]@{
      id = "fk:$($table.fullName):$($fk.name)".ToLowerInvariant(); left = $table.id; right = $fk.referencedTable.ToLowerInvariant()
      conditions = @($conditions); cardinality = 'N:1'; constraintName = $fk.name; physical = $true
      isDefault = $false; weight = 100; unresolvedExternal = $unresolved; sourceFile = $fk.sourceFile
    })
  }
}

$stats = foreach ($relativeFile in ($InputFiles | Sort-Object)) {
  $fileTables = @($orderedTables | Where-Object sourceFile -eq $relativeFile)
  [ordered]@{
    sourceFile = $relativeFile; tables = $fileTables.Count
    columns = @($fileTables.columns).Count
    primaryKeys = @($fileTables | Where-Object primaryKey).Count
    foreignKeys = @($fileTables.foreignKeys).Count
  }
}
$catalog = [ordered]@{ tables = $orderedTables; joins = @($joins | ForEach-Object { $_ }); stats = @($stats) }
$json = $catalog | ConvertTo-Json -Depth 20 -Compress
$outputPath = if ([IO.Path]::IsPathRooted($OutputFile)) { $OutputFile } else { Join-Path $root $OutputFile }
$js = "window.RZO_PHYSICAL_SCHEMA = $json;`n"
[IO.File]::WriteAllText($outputPath, $js, (New-Object Text.UTF8Encoding($false)))
$stats | Format-Table -AutoSize
Write-Host "Created: $outputPath"
