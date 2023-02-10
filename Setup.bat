@echo off
cd %~dp0
set drive=%cd:~0,2%
echo uui - USB unnatended installator for Enterprise Linux
echo (C) Artemy Vasiukov, avv@cranix.org  2012-2023
echo Self updating...

set debug="yep"


if not exist uui git\cmd\git.exe clone https://github.com/vasiukoff/uui.git 

cd uui

set str=%cd%
set safedir=%str:\=/%
..\git\cmd\git.exe pull  https://github.com/vasiukoff/uui.git master

if %ERRORLEVEL% == 0 goto :skipsafe
	echo Autofixing directory in Git global configuration
	git config --global --add safe.directory %safedir%
	..\git\cmd\git.exe pull  https://github.com/vasiukoff/uui.git master

:skipsafe	

cd ..
echo Updating all files...



xcopy .\uui\* %cd% /H /Y /C /R /S



echo Your drive is %drive%

if "%drive%"=="C:" goto fuckoff
goto next

:fuckoff
echo No way to install on drive C:!
pause
exit

:next
if not defined debug (

	echo Installig SYSLINUX..
	cd syslinux
	syslinux -m -a  -d /syslinux %drive%
	pause
	exit

) else (

	pause

)

