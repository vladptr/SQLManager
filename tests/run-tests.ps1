$ErrorActionPreference = "Stop"
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
