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


Alternative instructions for building on a Mac
----------------------------------------------

This method uses the meson build system, which is a Python wrapper around the ninja build system. It's very fast and flexible. It can also be used
on Linux.

### Install Homebrew, tools, and dependencies.

1. Please follow the instructions at https://brew.sh/ to install homebrew
2. Run the following commands:
3. `brew install gcc`
4. `brew install git`
5. `brew install libtommath ck`
6. `brew install ninja`
7. `pip install --upgrade pip`
8. `pip install --upgrade pyenv`
9. `pyenv install 3.6.5`
10. `pyenv local 3.6.5`
11. `pip install --upgrade pip`
12. `pip install --upgrade pipenv`
13. `pip install`
14. `pipenv shell`


### Build and install cyclone-bootstrap
1. Run the following commands:
2. `git clone https://github.com/justinethier/cyclone-bootstrap.git`
3. `cd cyclone-bootstrap`
4. `meson build`
5. `cd build`
6. `ninja`
7. `ninja install`

You will have `cyclone` and `icyc` executables generated in the local directory and installed in /usr/local/bin!


Meson build instruction for Linux
---------------------------------

### Install the Meson build system and dependencies

1. See the [Meson Quick Guide](https://mesonbuild.com/Quick-guide.html) for how to install it. On Ubuntu Linux you can do: 
  * `sudo apt-get install python3 python3-pip ninja-build`
  * `sudo pip3 install --user meson`
2. `pip3 install --user pipenv`
3. `pipenv shell`


### Build and install cyclone-bootstrap
1. Run the following commands:
2. `git clone https://github.com/justinethier/cyclone-bootstrap.git`
3. `cd cyclone-bootstrap`
4. `meson build`
5. `cd build`
6. `ninja`
7. `ninja install`

You will have `cyclone` and `icyc` executables generated in the local directory and installed in /usr/local/bin!

