@echo off

rem Text color code for Light Green is A
set "colorCode=A"
color %colorCode%

:VBSDynamicBuild
SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 900                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%
ECHO Wscript.Sleep 900                                    >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"

rem Read from ASCII.txt and visualize ASCII art
type ASCII.txt

echo .
echo Pixel Nostalgia updater running...
echo .
echo Updating Hypermax-Plus-PixN Theme...

cd ..\..\emulationstation\.emulationstation\themes\Hypermax-Plus-PixN
..\..\..\..\emulators\pixn\PortableGit\cmd\git pull

echo .
echo Updating Ckau-Book-PixN Theme...

cd ..\ckau-book-PixN
..\..\..\..\emulators\pixn\PortableGit\cmd\git pull

echo .
exit
