@echo off
REM ---------------------------------------------------
REM Script: zip-release.bat
REM Purpose: Zip the latest build and move to release folder
REM ---------------------------------------------------

set BUILD_DIR=D:\PratikpJenkins\Build Output
set RELEASE_DIR=D:\PratikpJenkins\Release Data

REM Create release folder if it doesn't exist
if not exist "%RELEASE_DIR%" (
    mkdir "%RELEASE_DIR%"
)

REM Generate timestamp
for /f %%i in ('powershell -command "Get-Date -Format yyyyMMdd_HHmmss"') do set TIMESTAMP=%%i

set ZIP_NAME=release_%TIMESTAMP%.zip
set ZIP_PATH=%RELEASE_DIR%\%ZIP_NAME%

REM Compress using PowerShell's Compress-Archive
powershell -Command "Compress-Archive -Path '%BUILD_DIR%\*' -DestinationPath '%ZIP_PATH%'"

echo Zipped release created at: %ZIP_PATH%
exit /b 0
