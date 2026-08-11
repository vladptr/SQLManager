@echo off
cd /d "%~dp0"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0build-portable.ps1"
if errorlevel 1 goto build_failed
if not exist "SQLManager-portable.html" goto missing

if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" goto chrome64
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" goto chrome32
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" goto chromelocal
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" goto edge32
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" goto edge64
goto defaultbrowser

:chrome64
start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%~dp0SQLManager-portable.html"
exit /b 0

:chrome32
start "" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" "%~dp0SQLManager-portable.html"
exit /b 0

:chromelocal
start "" "%LocalAppData%\Google\Chrome\Application\chrome.exe" "%~dp0SQLManager-portable.html"
exit /b 0

:edge32
start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" "%~dp0SQLManager-portable.html"
exit /b 0

:edge64
start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" "%~dp0SQLManager-portable.html"
exit /b 0

:defaultbrowser
start "" "SQLManager-portable.html"
exit /b 0

:missing
echo SQLManager-portable.html not found.
pause
exit /b 1


:build_failed
echo Failed to build SQLManager-portable.html.
pause
exit /b 1
