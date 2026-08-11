@echo off
cd /d "%~dp0"
if not exist "SQLManager-portable.html" goto missing
start "" "SQLManager-portable.html"
exit /b 0

:missing
echo SQLManager-portable.html not found.
pause
exit /b 1
