$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$ServerScript = Join-Path $Root "server\sqlmanager.ps1"
$AppUrl = "http://127.0.0.1:8787/?app=1"

function Test-ServerReady {
  try {
    $response = Invoke-WebRequest -Uri "http://127.0.0.1:8787/" -UseBasicParsing -TimeoutSec 2
    return $response.StatusCode -ge 200 -and $response.StatusCode -lt 500
  } catch {
    return $false
  }
}

function Start-AppWindow([string]$Url) {
  $candidates = @(
    "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe",
    "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe",
    "${env:ProgramFiles(x86)}\Google\Chrome\Application\chrome.exe",
    "$env:ProgramFiles\Google\Chrome\Application\chrome.exe"
  )
  foreach ($path in $candidates) {
    if (-not (Test-Path -LiteralPath $path)) { continue }
    return Start-Process -FilePath $path -PassThru -ArgumentList @(
      "--app=$Url",
      "--window-size=1440,920",
      "--disable-features=Translate",
      "--disable-extensions"
    )
  }
  throw "Edge or Chrome not found for app window launch."
}

Write-Host "SQLManager starting..."
$server = Start-Process -FilePath "powershell.exe" -PassThru -WindowStyle Hidden -WorkingDirectory $Root -ArgumentList @(
  "-NoProfile",
  "-ExecutionPolicy", "Bypass",
  "-File", "`"$ServerScript`"",
  "-NoBrowser"
)

$ready = $false
for ($attempt = 0; $attempt -lt 40; $attempt++) {
  if ($server.HasExited) {
    throw "SQLManager background server exited during startup."
  }
  if (Test-ServerReady) {
    $ready = $true
    break
  }
  Start-Sleep -Milliseconds 500
}
if (-not $ready) {
  Stop-Process -Id $server.Id -Force -ErrorAction SilentlyContinue
  throw "SQLManager is not responding at http://127.0.0.1:8787/"
}

$window = Start-AppWindow $AppUrl
Write-Host "SQLManager is running. Close app window to exit."

try {
  Wait-Process -Id $window.Id
} finally {
  if (-not $server.HasExited) {
    Stop-Process -Id $server.Id -Force -ErrorAction SilentlyContinue
  }
}
