@echo off
set workdir=%cd%
cls
color
mode con: cols=116 lines=35
title Windows Utilities by Henry133 - ttm38421@gmail.com - Henry133#2436
goto title

    REM ----------------------------------------------------------------------------------------
	REM Copyright (c) 2023 by James Henry
	REM Owner: Henry133
	REM Developer: Henry133
	REM Coder/Programmer: Henry133

	REM Windows Utilities is a collection of small and lightweight utilities for Windows, written in Batch.
	REM You are free to redistribute the program, as all credits are also here
	
	REM You can leave feedback by sending a DM to Henry133#2436 or by opening an issue on GitHub. Thanks
  
  REM If you want to translate the file to another languages, that is FORBIDDEN. Please learn English if you REALLY want to use this file!
  
    REM ----------------------------------------------------------------------------------------

:title
cd %workdir%
cls
echo.
echo.
echo.
echo.                                         -------// Windows Utilities \\-------
echo.                    [ Fun ]
echo.
echo.                    [1] Display a Matrix
echo.                    [2] Random Generator
echo.                    [3] Write some code
echo.                    [ Shortcuts ]
echo.                    [4] Open Google Chrome - [5] Open Google Chrome with a link
echo.                    [6] Device Manager
echo.                    [7] Run Command Prompt - [p] Run Windows PowerShell
echo.                    [8] Run Registry Editor
echo.                    [9] Run Task Manager
echo.
echo.                    [ Utilities ]
echo.
echo.                    [a] Run Calculator - [b] Calculate RIGHT HERE
echo.                    [c] Display a message (to specified user)
echo.                    [d] List (specified) directory structure - [i] List (specified) directory content
echo.
echo.                    [ Misc. ]
echo.
echo.                    [e] Credits
echo.                    [f] Display ReadMe
echo.                    [s] Source code
echo.                    [t] Exit
echo.					 [l] Clear Cache
echo.
choice /C 123456789abcdefstipl /M ".    Enter your choice. Press the key on your keyboard matches to your option" /n

if "%ERRORLEVEL%"=="1" goto:Matrix
if "%ERRORLEVEL%"=="2" goto:Random
if "%ERRORLEVEL%"=="3" goto:CodeWrite
if "%ERRORLEVEL%"=="4" goto:Gchr
if "%ERRORLEVEL%"=="5" goto:GchrLink
if "%ERRORLEVEL%"=="6" goto:Devmgmt
if "%ERRORLEVEL%"=="7" goto:CMD
if "%ERRORLEVEL%"=="8" goto:RegEdit
if "%ERRORLEVEL%"=="9" goto:TaskMgr
if "%ERRORLEVEL%"=="10" goto:Calc
if "%ERRORLEVEL%"=="11" goto:DOSCalc
if "%ERRORLEVEL%"=="12" goto:Msg
if "%ERRORLEVEL%"=="13" goto:TreeCMD
if "%ERRORLEVEL%"=="14" goto:Credit
if "%ERRORLEVEL%"=="15" goto:ReadMe
if "%ERRORLEVEL%"=="16" goto:GitHub
if "%ERRORLEVEL%"=="17" goto:Exit
if "%ERRORLEVEL%"=="18" goto:DirContent
if "%ERRORLEVEL%"=="19" goto:PS
if "%ERRORLEVEL%"=="20" goto:clean

:clean
cls
forfiles /m *.dat /c "del /f /q @FILE"
goto title

:Matrix

:: Matrix simply fill up the entire console with Windows' %random% variable which generates random, then make a loop so the thing is more like a matrix

cd res
start matrix.cmd && goto title

:Random

:: Random Generator also use %random%, but for once and no loop

cls

echo Your result is %random%
echo.
echo Press any key to get back to title screen
pause >> NUL
goto :title

:CodeWrite

:: Code that are written in JavaScript.
:: Those aren't flexible at all.

cls

set /a code=0

if code==0 (
  echo console.log('Hello World')
  echo.
  echo Press any key to get back to title screen
  pause >> NUL
  set /a code+=1
  goto title
)
if code==1 (
  echo require('discord.js')
  echo const bot = new Client({intents:12345})
  echo.
  echo bot.login("AbcDex_IamToken")
  echo.
  echo Press any key to get back to title screen
  pause >> NUL
  set /a code+=1
  goto title
)
if code==2 (
  echo let a = 1
  echo let b = 1
  echo.
  echo // Output: 2
  echo console.log(a + b)
  echo.
  echo Press any key to get back to title screen
  pause >> NUL
  set /a code=0
  goto title
)

:Ghcr

::Easily to open Chrome. Way faster.

cls

echo You will be redirected to the title until the Chrome is started.
if exist "C:\Program Files (x86)" start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" && cls && goto title
if not exist "C:\Program Files(x86)" start "C:\Program Files\Google\Chrome\Application\chrome.exe" && cls && goto title

:GhcrLink

:: Open Chrome with Link

cls

set /p link="Enter the link that you wish to open with Chrome: "
echo You will be redirected to the title until the Chrome is started.
if exist "C:\Program Files (x86)" start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %link% && cls && goto title
if not exist "C:\Program Files(x86)" start "C:\Program Files\Google\Chrome\Application\chrome.exe" %link% && cls && goto title

:Devmgmt

:: Open Device Management
::
:: NOTE: DON'T TOUCH IF YOU DON'T KNOW!

cls

echo WARNING: Use Device Manager with caution! Unless you know what you are doing, you might break something. Continue?
choice
if "%ERRORLEVEL%"=="1" devmgmt.msc
if "%ERRORLEVEL%"=="2" goto title

:CMD
echo Intergrated Command Prompt
echo If you want to back to title, just type 'exit' in the prompt.
prompt %cd%>
goto title

:RegEdit

:: Open Registry Editor
::
:: WARNING: NEVER TOUCH ANYTHING IF YOU DON'T UNDERSTAND THEM, UNLESS YOU KNOW WHAT ARE YOU DOING!

cls

echo WARNING: Use Registry Editor with caution! Unless you know what you are doing, you might break something. Continue?
choice
if "%ERRORLEVEL%"=="1" regedit
if "%ERRORLEVEL%"=="2" goto title
goto title

:TaskMgr

:: Open Task Manager
::
:: NOTE: If you end a system task, it would get your system into trouble!

cls

echo WARNING: Task Manager allows you to end system/critical processes which may break or crash your system. Continue?
taskmgr.exe
goto title

:Calc

cls

:: Run Windows Calculator
calc.exe && goto title

cls

:DOSCalc

cls :: HOTFIX-02 -- Clear the screen before calculating. More like other sections --

set /p fn="Enter the first number: "
set /p sn="Enter the second number: "

set /a a = %fn%+%sn%
set /a b = %fn%-%sn%
set /a c = %fn%*%sn%
set /a d = %fn%/%sn%

echo Result for Add, Sub, Mul, Div:
echo %a%, %b%, %c%, %d%
echo.
echo Press any key to return to title.
pause >> NUL
goto title

:Msg

:: Send Message to some user

cls

set /p user="Enter the target username: "
set /p msg="Enter your message: "
cd res
runas /user:%user% "message.cmd %msg%"

:TreeCMD

cls

set /p dir="Specify FULL path to directory that you want to analyze: "
cd %dir%
tree %dir%
pause >> NUL
goto title

:Credit
cd %workdir%/res
start Credit.txt
goto title

:ReadMe
cd %workdir%
start ReadMe.txt
goto title

:GitHub
cd %workdir%/res
start github-link.cmd
goto title

:Exit
cls
echo Are you sure to exit? [Y/N]
choice
if "%ERRORLEVEL%" == "1" exit
if "%ERRORLEVEL%" == "2" goto title

:DirContent

cls

set /p dir="Specify FULL path to directory that you want to analyze: "
cd %dir%
dir %dir%
pause >> NUL
goto title

:PS
cls
echo Spawned PowerShell window.
start powershell && goto title
