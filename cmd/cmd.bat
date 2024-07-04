@echo off
title Command Prompt
set path=C:\

:cmdver
echo Welcome to 123Lniner's command interpreter [Version 2024.7.4]
echo See "..\LICENSE" for license information.
echo.
goto main

:exit
exit

:run
echo Please type the name of the file you want to run
echo.
set /p program="RUN> "
%path%%program%
echo.
goto main

:setdir
echo Please type the path of the folder you want to navicate to (add backslash "\" at the end)
echo.
set /p path="SETDIR> "
echo.
goto main

:display
echo Please type the thing you want to echo
echo.
set /p text="DISPLAY> "
echo %text%
echo.
goto main

:help
echo DISPLAY        Displays text of next line.
echo SETDIR         Changes the current directory to the path specified in the following line.
echo RUN            Runs a program specified in the following line (use SETDIR to change folders).
echo EXIT           Quits the command interpreter.
echo CMDVER         Displays current command interpreter version.
echo.
goto main

:main
set /p cmd="%path%> "
if %cmd% EQU help call :help
if %cmd% EQU HELP call :help
if %cmd% EQU display call :display
if %cmd% EQU DISPLAY call :display
if %cmd% EQU setdir call :setdir
if %cmd% EQU SETDIR call :setdir
if %cmd% EQU run call :run
if %cmd% EQU RUN call :run
if %cmd% EQU exit call :exit
if %cmd% EQU EXIT call :exit
if %cmd% EQU cmdver call :cmdver
if %cmd% EQU CMDVER call :cmdver
echo.
goto main
