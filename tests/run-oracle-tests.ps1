$ErrorActionPreference = "Stop"
$server = Resolve-Path "$PSScriptRoot\..\server\sqlmanager.ps1"
$valid = @(
  "SELECT * FROM dual",
  "WITH x AS (`n SELECT 1 n FROM dual`n) SELECT * FROM x"
)
$blocked = @(
  "DROP TABLE x",
  "DELETE FROM x",
  "SELECT * FROM dual; DROP TABLE x",
  "BEGIN NULL; END;",
  "SELECT * FROM dual FOR UPDATE",
  "SELECT 1 FROM dual`nSPOOL result.csv"
)
foreach ($sql in $valid) {
  $output = & powershell.exe -NoProfile -ExecutionPolicy Bypass -File $server -ValidateSql $sql 2>&1
  if ($LASTEXITCODE -ne 0 -or ($output -join " ") -notmatch "VALID") { throw "Valid SQL rejected: $sql`n$output" }
  Write-Host "PASS validator allows read-only SQL" -ForegroundColor Green
}
foreach ($sql in $blocked) {
  $previousErrorActionPreference = $ErrorActionPreference
  $ErrorActionPreference = "Continue"
  $null = & powershell.exe -NoProfile -ExecutionPolicy Bypass -File $server -ValidateSql $sql 2>&1
  $ErrorActionPreference = $previousErrorActionPreference
  if ($LASTEXITCODE -eq 0) { throw "Unsafe SQL accepted: $sql" }
  Write-Host "PASS validator blocks unsafe SQL" -ForegroundColor Green
}

$browser = "C:\Program Files\Google\Chrome\Application\chrome.exe"
if (-not (Test-Path -LiteralPath $browser)) { throw "Google Chrome not found: $browser" }
$testFile = (Resolve-Path "$PSScriptRoot\oracle-export.test.html").Path.Replace("\", "/")
$profile = Join-Path $env:TEMP ("sqlmanager-oracle-tests-" + [guid]::NewGuid())
$stdout = Join-Path $env:TEMP ("sqlmanager-oracle-tests-" + [guid]::NewGuid() + ".out")
$stderr = Join-Path $env:TEMP ("sqlmanager-oracle-tests-" + [guid]::NewGuid() + ".err")
$arguments = @("--headless=new", "--no-sandbox", "--disable-gpu", "--allow-file-access-from-files", "--virtual-time-budget=5000", "--user-data-dir=$profile", "--dump-dom", "file:///$testFile")
Start-Process -FilePath $browser -ArgumentList $arguments -Wait -PassThru -NoNewWindow -RedirectStandardOutput $stdout -RedirectStandardError $stderr | Out-Null
$html = Get-Content -Raw -LiteralPath $stdout
$match = [regex]::Match($html, '<pre id="results">([\s\S]*?)</pre>')
$json = [Net.WebUtility]::HtmlDecode($match.Groups[1].Value)
if (-not $json) { throw "Oracle frontend tests returned no result." }
$result = $json | ConvertFrom-Json
$result.results | ForEach-Object { if ($_.ok) { Write-Host "PASS $($_.name)" -ForegroundColor Green } else { Write-Host "FAIL $($_.name): $($_.error)" -ForegroundColor Red } }
Remove-Item -LiteralPath $stdout, $stderr -Force -ErrorAction SilentlyContinue; Remove-Item -LiteralPath $profile -Recurse -Force -ErrorAction SilentlyContinue
if ($result.failed -gt 0) { exit 1 }
Write-Host "Oracle execution tests passed: $($result.passed)" -ForegroundColor Green
exit 0
