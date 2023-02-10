@echo off
cd %~dp0
set drive=%cd:~0,2%
echo USB Unnatended installator for Enterprise Linux
echo (C) Artemy Vasiukov, avv@cranix.org  2012-2023
echo Self updating...

set /p debug="yep"

cd src

rmdir /s /q uui
..\git\cmd\git.exe clone https://github.com/vasiukoff/uui.git


echo Your drive is %drive%

if "%drive%"=="C:" goto fuckoff
goto next

:fuckoff
echo No way to install on drive C:!
pause
exit

:next
if not defined debug (
cd syslinux
syslinux -m -a  -d /syslinux %drive%
)
pause
exit
