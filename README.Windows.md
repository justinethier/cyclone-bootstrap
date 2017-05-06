Instructions for building on Windows using MSYS
-----------------------------------------------


### Install MSYS2
1. Download msys2 from http://www.msys2.org/
2. Install msys2 to a location of your choice - say C:\msys64 (the steps should work for 32bit too)
3. Run C:\msys64\msys2.exe
4. Run "pacman -Syu" (Hit 'Y' when asked - Proceed with installation?). Just close the terminal window if you get the warning about "terminating msys2 without returning to shell" - there is a known issue[https://github.com/StephanTLavavej/mingw-distro/issues/20] with msys.

### Install necessary tools in MSYS2
1. Run C:\msys64\msys2.exe and execute the following commands in the msys terminal
2. pacman -Su (Hit 'Y' when asked - Proceed with installation?)
3. pacman -S gcc make autoconf git (Hit 'Y' when asked - Proceed with installation?)

### Create a directory to contain everthing needed for cyclone-bootstrap
1. export CYCLONE=$PWD/CYCLONE
2. mkdir $CYCLONE
3. cd $CYCLONE
4. mkdir $CYCLONE/install

### Build and install libtomath
1. git clone https://github.com/libtom/libtommath.git
2. 




git clone https://github.com/justinethier/cyclone-bootstrap.git

git clone https://github.com/libtom/libtommath.git

make
DESTDIR=/home/ckk/Cyclone/install make install


git clone https://github.com/concurrencykit/ck.git
./configure
make
DESTDIR=/home/ckk/Cyclone/install make install

