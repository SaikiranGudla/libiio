@echo off
echo === Running Libiio Build Script ===
call build_libiio.bat

if %errorlevel% neq 0 (
    echo Build script failed. Aborting.
    exit /b %errorlevel%
)

echo === Running Create folder Script ===
call my_build\builds.bat

if %errorlevel% neq 0 (
    echo Folder script failed. Aborting.
    exit /b %errorlevel%
)

echo === Build and create successfull ===
pause
