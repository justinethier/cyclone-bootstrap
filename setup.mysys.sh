#!/bin/sh


CYCLONE_BOOTSTRAP_SRC=$PWD

# Root directory where everthing related
# to cyclone-bootstrap will reside.
export CYCLONE_ROOT=$HOME/CYCLONE_ROOT
export INSTALL_DIR=/
export INSTALL_RELATIVE=/usr/local

# Create the necessary directories
mkdir $CYCLONE_ROOT

# Build and install libtommath
cd $CYCLONE_ROOT
repo=https://github.com/libtom/libtommath.git 
echo "Cloning $repo"
git clone $repo
cd libtommath
LIBPATH=/$INSTALL_RELATIVE/lib INCPATH=/$INSTALL_RELATIVE/include make
LIBPATH=/$INSTALL_RELATIVE/lib INCPATH=/$INSTALL_RELATIVE/include make install


# Build and install concurrencykit
cd $CYCLONE_ROOT
repo=https://github.com/concurrencykit/ck.git
echo "Cloning $repo"
git clone $repo
cd ck
./configure
make
DESTDIR=/ make install


# Get back to cyclone-bootstrap
cd $CYCLONE_BOOTSTRAP_SRC
cp -v Makefile.config.msys2 Makefile.config


# Fixing up the Makefile - this is a temporary crude workaround
perl -pi -e 's/-shared /-Wl,-undefined -shared /' Makefile
make
make install
