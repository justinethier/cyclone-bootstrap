Instructions for building on Mac 
--------------------------------

### Install Homebrew, tools, and dependencies. 

Mac builds use the meson build system, which is a Python wrapper around the ninja build system. It's very fast and flexible.

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

You will have `cyclone` and `icyc` executables generated at `$(HOME)/CYCLONE_ROOT/INSTALL/usr/local/bin`!

Please set library path by doing `export DYLD_LIBRARY_PATH=$HOME/CYCLONE_ROOT/INSTALL/usr/local/lib`.
