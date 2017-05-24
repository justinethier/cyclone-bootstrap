Instructions for building on Mac 
--------------------------------

### Install Homebrew and gcc (You can skip this if you already have gcc from XCode)
1. Please follow the instructions at https://brew.sh/ to install homebrew
2. Run `brew install gcc`
3. Install git from https://git-scm.com/

### Build and install cyclone-bootstrap
1. Run the following commands:
2. `git clone https://github.com/justinethier/cyclone-bootstrap.git`
3. `cd cyclone-bootstrap`
4. `./setup.mac.sh` - this will fetch and build all the dependencies.

You will have `cyclone` and `icyc` executables generated at `$(HOME)/CYCLONE_ROOT/INSTALL/usr/local/bin`!

Please set library path by doing `export DYLD_LIBRARY_PATH=$HOME/CYCLONE_ROOT/INSTALL/usr/local/lib`.
