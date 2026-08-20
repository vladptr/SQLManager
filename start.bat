@echo off
cd /d "%~dp0"
set "EXE=%~dp0app\desktop\publish\SQLManager.Desktop.exe"
if exist "%EXE%" (
  start "" "%EXE%"
) else (
  echo Desktop exe not found. Launching PowerShell launcher...
  powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0app\launch.ps1"
)
if errorlevel 1 pause
