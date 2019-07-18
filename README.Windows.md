Instructions for building on Windows using MSYS
-----------------------------------------------

### Install MSYS2
1. Download msys2 from http://www.msys2.org/
2. Install msys2 to a location of your choice - say `C:\msys64` (the steps should work for 32bit too)
3. Run `C:\msys64\msys2.exe`
4. Run `pacman -Syu` (Hit 'Y' when asked - Proceed with installation?). Just close the terminal window if you get the warning about "terminating msys2 without returning to shell" - there is a [known issue with msys](https://github.com/StephanTLavavej/mingw-distro/issues/20).

### Install necessary tools in MSYS2
1. Run `C:\msys64\msys2.exe` and execute the following commands in the msys terminal:
2. `pacman -Su` (Hit 'Y' when asked - Proceed with installation?)
3. `pacman -S gcc make autoconf git` (Hit 'Y' when asked - Proceed with installation?)

### Build and install cyclone-bootstrap
1. Run the following commands:
2. `git clone https://github.com/justinethier/cyclone-bootstrap.git`
3. `cd cyclone-bootstrap`
4. `./setup.mysys.sh` - this will fetch and build all the dependencies.

You will have `cyclone.exe` and `icyc.exe` generated at `/usr/local/bin`!
