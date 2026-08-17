$ErrorActionPreference = "Stop"
$browser = "C:\Program Files\Google\Chrome\Application\chrome.exe"
if (-not (Test-Path -LiteralPath $browser)) { throw "Google Chrome not found: $browser" }
$testFile = (Resolve-Path "$PSScriptRoot\catalog-ui.test.html").Path.Replace("\", "/")
$profile = Join-Path $env:TEMP ("sqlmanager-ui-tests-" + [guid]::NewGuid())
$stdout = Join-Path $env:TEMP ("sqlmanager-ui-tests-" + [guid]::NewGuid() + ".out")
$stderr = Join-Path $env:TEMP ("sqlmanager-ui-tests-" + [guid]::NewGuid() + ".err")
$arguments = @("--headless=new", "--no-sandbox", "--disable-gpu", "--no-first-run", "--allow-file-access-from-files", "--run-all-compositor-stages-before-draw", "--virtual-time-budget=5000", "--user-data-dir=$profile", "--dump-dom", "file:///$testFile")
Start-Process -FilePath $browser -ArgumentList $arguments -Wait -PassThru -NoNewWindow -RedirectStandardOutput $stdout -RedirectStandardError $stderr | Out-Null
$output = Get-Content -Raw -LiteralPath $stdout
$match = [regex]::Match($output, '<pre id="results">([\s\S]*?)</pre>')
$json = [System.Net.WebUtility]::HtmlDecode($match.Groups[1].Value)
if (-not $json) { throw "Browser returned no UI test results.`n$output" }
$result = $json | ConvertFrom-Json
$result.results | ForEach-Object {
  if ($_.ok) { Write-Host "PASS $($_.name)" -ForegroundColor Green }
  else { Write-Host "FAIL $($_.name): $($_.error)" -ForegroundColor Red }
}
Write-Host ("Catalog metrics: " + ($result.metrics | ConvertTo-Json -Compress -Depth 5))
Remove-Item -LiteralPath $stdout, $stderr -Force -ErrorAction SilentlyContinue
Remove-Item -LiteralPath $profile -Recurse -Force -ErrorAction SilentlyContinue
if ($result.failed -gt 0) { exit 1 }
Write-Host "Catalog UI tests passed: $($result.passed)" -ForegroundColor Green
