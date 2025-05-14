@echo off
:: filepath: /home/saliv/Devops/Sample codes/Administrations/DailySysClean.bat

:: Title and description
echo ============================================
echo          DailySysClean Tool
echo ============================================

:: Check for Administrator privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Please run this script as Administrator.
    pause
    exit /b
)

:: Log file setup
set LOG_FILE=logs\cleaning_log.txt
if not exist logs mkdir logs
echo Cleaning started at %date% %time% > %LOG_FILE%

:: Clear temporary files
echo Cleaning temporary files...
del /q /s %TEMP%\*.* >nul 2>&1
echo Temporary files cleaned. >> %LOG_FILE%

:: Clear system logs
echo Cleaning system logs...
del /q /s C:\Windows\Logs\*.* >nul 2>&1
echo System logs cleaned. >> %LOG_FILE%

:: Free up memory
echo Freeing up memory...
for /f "tokens=1,2 delims=," %%a in ('tasklist /fi "status eq running" /fo csv') do (
    if not "%%a"=="Image Name" (
        echo Terminating process: %%a >> %LOG_FILE%
        taskkill /f /im %%a >nul 2>&1
    )
)
echo Memory freed. >> %LOG_FILE%

:: Completion message
echo Cleaning completed. Check the log file for details: %LOG_FILE%
pause