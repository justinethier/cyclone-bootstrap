Instructions for building on Windows using MSYS
-----------------------------------------------


1. Download msys2 from http://www.msys2.org/
2. Install msys2 to a location of your choice - say C:\msys64 (the steps should work for 32bit too)
3. Run C:\msys64\msys2.exe
4. Run "pacman -Syu" (Hit 'Y' when asked - Proceed with installation?). Just close the terminal window if you get the warning about "terminating msys2 without returning to shell" - there is a known issue[https://github.com/StephanTLavavej/mingw-distro/issues/20] with msys.
5. Run C:\msys64\msys2.exe and execute the following commands in the msys terminal
6. pacman -Su (Hit 'Y' when asked - Proceed with installation?)
7. pacman -S gcc make autoconf git (Hit 'Y' when asked - Proceed with installation?)
8. 





git clone https://github.com/justinethier/cyclone-bootstrap.git

git clone https://github.com/libtom/libtommath.git

make
DESTDIR=/home/ckk/Cyclone/install make install


git clone https://github.com/concurrencykit/ck.git
./configure
make
DESTDIR=/home/ckk/Cyclone/install make install

