$ErrorActionPreference = "Stop"

$Dotnet = "C:\Program Files\dotnet\dotnet.exe"
if (-not (Test-Path -LiteralPath $Dotnet)) {
  throw ".NET SDK not found at $Dotnet"
}

$Project = Join-Path $PSScriptRoot "SQLManager.Desktop\SQLManager.Desktop.csproj"
$OutDir = Join-Path $PSScriptRoot "publish"

& $Dotnet publish $Project -c Release -r win-x64 --self-contained false -p:PublishSingleFile=true -o $OutDir
Write-Host "Built: $OutDir\SQLManager.Desktop.exe"
