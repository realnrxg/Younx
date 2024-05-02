@echo off
@chcp 65001 >nul 2>&1
setlocal enabledelayedexpansion
title Younx Tweaker
set local=1.0
set localtwo=%local%
IF EXIST "%temp%\Updater.bat" DEL /S /Q /F "%temp%\Updater.bat" >nul 2>&1
powershell Invoke-WebRequest "https://pastebin.com/raw/cZdnzQsX" -OutFile "%temp%\Updater.bat" >nul 2>&1
CALL "%temp%\Updater.bat" 
IF "%local%"=="%localtwo%" goto :Main 
IF NOT "%local%"=="%localtwo%" goto :Updates

:Updates
cls
echo.
echo.
echo.
echo                        You are not on the lastest version do you want to update?
echo                                             Y = Yes, N = No
echo.
echo.
set /p choice="update? : "
if /i "%choice%"=="Y" goto :Update
if /i "%choice%"=="N" goto :Continue

:Update
cls
powershell Invoke-WebRequest "https://github.com/Realjonathah/HoneCtrl/releases/latest/download/HoneCtrl.Bat" -OutFile "C:\Users\%username%\Desktop\Younx.bat" >nul 2>&1
C:\Users\%username%\Desktop\Younx.bat
del% 0 >nul 2>&1
pause

       