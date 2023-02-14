@echo off

rem Config section

set branch="master"
set i.url="https://mirror.yandex.ru/rockylinux/9/BaseOS/x86_64/os/images/install.img"
set v.url="https://mirror.yandex.ru/rockylinux/9/BaseOS/x86_64/os/isolinux/vmlinuz"
set ir.url="https://mirror.yandex.ru/rockylinux/9/BaseOS/x86_64/os/isolinux/initrd.img"

rem End of Config section

cd %~dp0
set drive=%cd:~0,2%

powershell -Command Import-Module BitsTransfer

echo uui - USB unnatended installator for Enterprise Linux
echo (C) Artemy Vasiukov, avv@cranix.org  2012-2023
echo Self updating...

if not exist images\install.img ( 
	echo "Downloading install.img..."
	cd images
	powershell -Command Start-BitsTransfer -source "%i.url%"
	cd ..
)

if not exist syslinux\vmlinuz ( 
	echo "Downloading vmlinuz..."
	cd syslinux
	powershell -Command Start-BitsTransfer -source "%v.url%" 
	cd ..
)

if not exist syslinux\initrd.img ( 
	echo "Downloading initrd.img..."
	cd syslinux
	powershell -Command Start-BitsTransfer -source "%ir.url%" 
	cd ..
)

if not exist uui git\cmd\git.exe clone https://github.com/vasiukoff/uui.git 

cd uui

set str=%cd%
set safedir=%str:\=/%
..\git\cmd\git.exe pull  https://github.com/vasiukoff/uui.git %branch%

if %ERRORLEVEL% == 0 goto :skipsafe
	echo Autofixing directory in Git global configuration
	git config --global --add safe.directory %safedir%
	..\git\cmd\git.exe pull  https://github.com/vasiukoff/uui.git %branch%

:skipsafe	
..\git\cmd\git.exe checkout %branch%

cd ..
echo Updating all files...

xcopy .\uui\* %cd%  /H /Y /C /R /S /EXCLUDE:%cd%uui\exclude.txt







echo Your drive is %drive%

if "%drive%"=="C:" goto fuckoff
goto next

:fuckoff
echo No way to install on drive C:!
pause
exit 

:next

echo Installig SYSLINUX..

cd syslinux
syslinux -m -a  -d /syslinux %drive%
cd ..
pause
exit
