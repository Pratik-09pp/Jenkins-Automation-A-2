@echo off
REM -----------------------------------------
REM Script: copy-dlls.bat
REM Purpose: Copy entire net9.0 build output to Build Output folder
REM -----------------------------------------

echo Copying all build output files...

REM Set paths dynamically
set SOURCE_DIR=%CD%\dummy\dummy\bin\Release\net9.0
set TARGET_DIR=D:\PratikpJenkins\Build Output

REM Create target directory if it doesn't exist
if not exist "%TARGET_DIR%" (
    mkdir "%TARGET_DIR%"
)

REM Copy all files and subdirectories from net9.0 to target
xcopy "%SOURCE_DIR%\*" "%TARGET_DIR%\" /E /H /C /I /Y

if %errorlevel% neq 0 (
    echo Error occurred while copying files.
    exit /b 1
)

echo All files copied successfully to: %TARGET_DIR%
exit /b 0

