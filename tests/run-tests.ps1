$ErrorActionPreference = "Stop"
$runtimeFiles = @(
  "$PSScriptRoot\..\data\schema.js",
  "$PSScriptRoot\..\data\catalog-ui.js",
  "$PSScriptRoot\..\js\sql-builder.js",
  "$PSScriptRoot\..\js\template-utils.js",
  "$PSScriptRoot\..\js\preset-store.js",
  "$PSScriptRoot\..\js\wizard-state.js",
  "$PSScriptRoot\..\js\app.js"
)
foreach ($runtimeFile in $runtimeFiles) {
  $runtimeSource = [IO.File]::ReadAllText((Resolve-Path $runtimeFile), [Text.Encoding]::UTF8)
  if ($runtimeSource -match '\?\.|\?\?|\|\|=|&&=|\?\?=') {
    throw "Unsupported modern JavaScript operator found in $runtimeFile"
  }
}
$importA = Join-Path $env:TEMP ("rzo-physical-a-" + [guid]::NewGuid() + ".js")
$importB = Join-Path $env:TEMP ("rzo-physical-b-" + [guid]::NewGuid() + ".js")
& "$PSScriptRoot\..\tools\import-ddl.ps1" -InputFiles @("rzo_schema_4.sql", "rzo_schema_5.sql", "rzo_schema_6.sql", "rzo_schema_7.sql") -OutputFile $importA | Out-Null
& "$PSScriptRoot\..\tools\import-ddl.ps1" -InputFiles @("rzo_schema_7.sql", "rzo_schema_6.sql", "rzo_schema_5.sql", "rzo_schema_4.sql") -OutputFile $importB | Out-Null
$hashA = (Get-FileHash -Algorithm SHA256 -LiteralPath $importA).Hash
$hashB = (Get-FileHash -Algorithm SHA256 -LiteralPath $importB).Hash
Remove-Item -LiteralPath $importA, $importB -Force
if ($hashA -ne $hashB) { throw "DDL import is not deterministic when input order changes" }
$browser = "C:\Program Files\Google\Chrome\Application\chrome.exe"
if (-not (Test-Path -LiteralPath $browser)) {
  throw "Google Chrome не знайдено: $browser"
}
$testFile = (Resolve-Path "$PSScriptRoot\sql-builder.test.html").Path.Replace("\", "/")
$profile = Join-Path $env:TEMP ("sqlmanager-tests-" + [guid]::NewGuid())
$stdout = Join-Path $env:TEMP ("sqlmanager-tests-" + [guid]::NewGuid() + ".out")
$stderr = Join-Path $env:TEMP ("sqlmanager-tests-" + [guid]::NewGuid() + ".err")
$arguments = @("--headless=new", "--no-sandbox", "--disable-gpu", "--disable-gpu-compositing", "--disable-software-rasterizer", "--no-first-run", "--user-data-dir=$profile", "--dump-dom", "file:///$testFile")
$process = Start-Process -FilePath $browser -ArgumentList $arguments -Wait -PassThru -NoNewWindow -RedirectStandardOutput $stdout -RedirectStandardError $stderr
$output = Get-Content -Raw -LiteralPath $stdout
$dom = $output -join "`n"
$match = [regex]::Match($dom, '<pre id="results">([\s\S]*?)</pre>')
$json = $match.Groups[1].Value
$json = [System.Net.WebUtility]::HtmlDecode($json)
if (-not $json) { throw "Браузер не повернув результати тестів.`n$output" }
$result = $json | ConvertFrom-Json
$result.results | ForEach-Object {
  if ($_.ok) { Write-Host "PASS $($_.name)" -ForegroundColor Green }
  else { Write-Host "FAIL $($_.name): $($_.error)" -ForegroundColor Red }
}
if ($result.failed -gt 0) { exit 1 }
Write-Host "Усі тести пройдено: $($result.passed)" -ForegroundColor Green
