@echo off
setlocal

:: Set project path (relative to workspace)
set "WORKSPACE=%CD%"
set "PROJECT_DIR=%WORKSPACE%\HelloWorldApp"
set "PROJECT_FILE=HelloWorldApp.csproj"

:: MSBuild path (adjust if different)
set "MSBUILD_PATH=C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin\MSBuild.exe"

:: Log file
set "BUILD_LOG=%WORKSPACE%\build_report.log"

echo Building project from: %PROJECT_DIR%
echo Build started at %DATE% %TIME% > "%BUILD_LOG%"

:: Build the project
"%MSBUILD_PATH%" "%PROJECT_DIR%\%PROJECT_FILE%" /p:Configuration=Release >> "%BUILD_LOG%" 2>&1

if %ERRORLEVEL% neq 0 (
    echo Build failed. Check build_report.log for errors.
    exit /b 1
) else (
    echo Build succeeded.
)

endlocal
