Instructions for building on Mac 
--------------------------------

### Install Homebrew, tools, and dependencies.

1. Follow the instructions at https://brew.sh/ to install the homebrew package manager.
2. Run the following commands:
  - `brew install git gcc libtool`
  - `brew install libtommath ck`


### Build and install cyclone-bootstrap

Run the following commands:

1. `git clone https://github.com/justinethier/cyclone-bootstrap.git`
2. `cd cyclone-bootstrap`
3. `make`
4. `make install`
5. `make test`

You will have `cyclone` and `icyc` executables generated in the local directory and installed in /usr/local/bin!

