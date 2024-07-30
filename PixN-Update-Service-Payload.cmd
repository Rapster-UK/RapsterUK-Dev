@echo off

rem Text color code for Light Green is A
set "colorCode=A"
color %colorCode%

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
pause
