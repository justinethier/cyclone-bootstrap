Instructions for building on Mac 
--------------------------------

### Install Homebrew and gcc (You can skip this if you already have gcc from XCode)
1. Please follow the instructions at https://brew.sh/ to install homebrew
2. brew install gcc
3. Install git from https://git-scm.com/

### Build and install cyclone-bootstrap
1. git clone https://github.com/justinethier/cyclone-bootstrap.git
2. cd cyclone-bootstrap
3. ./setup.mac.sh - this will fetch and build all the dependencies.

You will have cyclone.exe and icyc.exe generated at $(HOME)/CYCLONE_ROOT/INSTALL/usr/local/bin!
Please set library path by doing export DYLD_LIBRARY_PATH=$HOME/CYCLONE_ROOT/INSTALL/usr/local/lib
