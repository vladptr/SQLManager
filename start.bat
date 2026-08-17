@echo off
cd /d "%~dp0"
echo Starting SQLManager server mode...
echo Browser: http://127.0.0.1:8787/
echo Do not close this window.
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0server\sqlmanager.ps1"
if errorlevel 1 pause
