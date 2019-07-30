Instructions for building on FreeBSD 
------------------------------------

### Compiling from source

#### Install dependencies.

FreeBSD (as other BSDs) have a different `make` program we also need to install GNU Make.

Run the following command:

    sudo pkg install libtommath concurrencykit gmake
  
### Build and install cyclone-bootstrap

Run the following commands:

1. `git clone https://github.com/justinethier/cyclone-bootstrap.git`
2. `cd cyclone-bootstrap`
3. `./install.sh` 

You will have `cyclone` and `icyc` executables generated in the local directory and installed in /usr/local/bin!

PS: Note that `install.sh` is already set to use `gmake` instead of `make` on FreeBSD 12.
