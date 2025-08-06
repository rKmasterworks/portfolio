@echo off
REM Adobe Creative Cloud silent installer for USB deployment

REM Set installer filename (should be in the same folder as this .bat)
set INSTALLER=Creative_Cloud_Set-Up.exe

REM Check if installer exists
if not exist "%~dp0%INSTALLER%" (
    echo ERROR: Installer "%INSTALLER%" not found in the script folder.
    pause
    exit /b 1
)

echo Installing Adobe Creative Cloud silently...
start /wait "" "%~dp0%INSTALLER%" --silent --install

if %errorlevel% neq 0 (
    echo Installation failed with exit code %errorlevel%.
    pause
    exit /b %errorlevel%
) else (
    echo Adobe Creative Cloud installed successfully.
    pause
)

exit /b 0
