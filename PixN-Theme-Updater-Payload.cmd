@echo off
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
