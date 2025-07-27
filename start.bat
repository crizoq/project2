@echo off
title crizoq sms bomber
color 0A

:: Title and script description
echo ===============================
echo     crizoq sms bomber
echo ===============================
echo.

:: Python and pip check
echo [Check] Checking Python and pip installation...
python --version > nul 2>&1
if %errorlevel% neq 0 (
    echo [Error] Python not found. Please install Python and try again.
    pause
    exit /b
)

pip --version > nul 2>&1
if %errorlevel% neq 0 (
    echo [Error] pip not found. Please install pip and try again.
    pause
    exit /b
)

:: Installing required libraries
echo [Install] Installing required Python libraries...
pip install -r requirements.txt > nul 2>&1
if %errorlevel% neq 0 (
    echo [Error] Failed to install required libraries. Please check the requirements.txt file.
    pause
    exit /b
)

:: Installing additional dependencies
echo [Install] Installing additional dependencies...
pip install bs4 requests colorama > nul 2>&1
if %errorlevel% neq 0 (
    echo [Error] Failed to install additional dependencies. Please check your connection.
    pause
    exit /b
)

:: Running the program
echo [Starting] Launching Axid SMS Bomb...
python pomerdbomb.py
if %errorlevel% neq 0 (
    echo [Error] An error occurred while running the program. Please check the pomerdbomb.py file.
    pause
    exit /b
)

:: Process completed successfully
echo [Done] Program launched successfully!
pause
