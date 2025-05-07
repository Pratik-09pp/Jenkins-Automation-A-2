@echo off
REM -----------------------------------------
REM Script: run-executable.bat
REM Purpose: Run the HelloWorldApp.exe file
REM -----------------------------------------

set EXECUTABLE_PATH=D:\PratikpJenkins\Build Output\HelloWorldApp.exe

echo Running executable: %EXECUTABLE_PATH%

if exist "%EXECUTABLE_PATH%" (
    "%EXECUTABLE_PATH%"
    echo Execution completed.
    exit /b 0
) else (
    echo ERROR: Executable not found at %EXECUTABLE_PATH%
    exit /b 1
)
