@echo off
setlocal

REM Set working directories
set "OFFICEDIR=C:\DevOps\portofolio\projects\OfficeInstaller\Office"
set "WORKDIR=C:\DevOps\portofolio\projects\OfficeInstaller"

REM Install Microsoft 365 Apps using ODT
echo Installing Microsoft 365 Apps for enterprise...
"%OFFICEDIR%\setup.exe" /configure "%OFFICEDIR%\config.xml"
if errorlevel 1 (
    echo ERROR: Failed to install Office.
    pause
    exit /b 1
)

REM 
echo Installing Microsoft Teams using bootstrapper...
"%WORKDIR%\teamsbootstrapper.exe" --provision-admin
if errorlevel 1 (
    echo ERROR: Failed to install Teams bootstrapper.
    pause
    exit /b 1
)

echo Installation completed successfully.
pause
endlocal
exit /b 0
