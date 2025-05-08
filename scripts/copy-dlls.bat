@echo off
REM -----------------------------------------
REM Script: copy-dlls.bat
REM Purpose: Copy output DLLs and EXE to Build Output folder
REM -----------------------------------------

echo Copying build output files...

REM Set paths dynamically
set SOURCE_DIR=%CD%\dummy\dummy\bin\Release\net9.0
set TARGET_DIR=D:\PratikpJenkins\Build Output

REM Create target directory if it doesn't exist
if not exist "%TARGET_DIR%" (
    mkdir "%TARGET_DIR%"
)

REM Copy only DLLs and EXE
xcopy "%SOURCE_DIR%\*.dll" "%TARGET_DIR%\" /Y
xcopy "%SOURCE_DIR%\*.exe" "%TARGET_DIR%\" /Y

if %errorlevel% neq 0 (
    echo Error occurred while copying files.
    exit /b 1
)

echo Files copied successfully to: %TARGET_DIR%
exit /b 0
