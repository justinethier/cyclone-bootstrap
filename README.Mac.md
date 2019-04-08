Instructions for building on Mac 
--------------------------------

### Install Homebrew, tools, and dependencies.

1. Please follow the instructions at https://brew.sh/ to install homebrew
2. Run the following commands:
3. `brew install git gcc libtool`
4. `brew install libtommath ck`


### Build and install cyclone-bootstrap
1. Run the following commands:
2. `git clone https://github.com/justinethier/cyclone-bootstrap.git`
3. `cd cyclone-bootstrap`
4. `make; make install` 

You will have `cyclone` and `icyc` executables generated in the local directory and installed in /usr/local/bin!

