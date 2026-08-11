@echo off
chcp 65001 >nul
cd /d "%~dp0"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0build-portable.ps1"
if errorlevel 1 (
  echo Не вдалося створити переносну версію SQLManager.
  pause
  exit /b 1
)
start "" "%~dp0SQLManager-portable.html"
