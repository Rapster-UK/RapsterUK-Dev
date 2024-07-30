@echo off
setlocal

:VBSDynamicBuild
SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 900                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%
ECHO Wscript.Sleep 900                                    >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"

rem Text color code for Light Green is A
set "colorCode=A"
color %colorCode%

echo .
echo Updating the script...
    >nul 2>&1 bitsadmin /transfer update /download /priority foreground "https://contoso.com/script.bat" "%temp%\%~nx0"
    >nul 2>&1 move /y "%temp%\%~nx0" "%~0"
    (start "%~dp0" "%~0" updated) & exit /b
)
cd /d "%~dp0"

rem Updated code from here onwards.....
pause
rem Read from ASCII.txt and visualize ASCII art
type ASCII.txt

echo .
echo Pixel Nostalgia Theme updater running...
echo .
echo Updating Hypermax-Plus-PixN

cd ..\..\emulationstation\.emulationstation\themes\Hypermax-Plus-PixN
..\..\..\..\emulators\pixn\PortableGit\cmd\git pull

echo .
echo Updating Ckau-Book-PixN

cd ..\ckau-book-PixN
..\..\..\..\emulators\pixn\PortableGit\cmd\git pull

echo .
pause
