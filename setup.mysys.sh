#!/bin/sh


CYCLONE_BOOTSTRAP_SRC=$PWD

# Root directory where everthing related
# to cyclone-bootstrap will reside.
export CYCLONE_ROOT=$HOME/CYCLONE_ROOT
export INSTALL_DIR=$CYCLONE_ROOT/INSTALL
export INSTALL_RELATIVE=/usr/local


# Create the necessary directories
mkdir $CYCLONE_ROOT $INSTALL_DIR

# Build and install libtommath
cd $CYCLONE_ROOT
repo=https://github.com/libtom/libtommath.git 
echo "Cloning $repo"
git clone $repo
cd libtommath
LIBPATH=$INSTALL_DIR/$INSTALL_RELATIVE/lib INCPATH=$INSTALL_DIR/$INSTALL_RELATIVE/include make
LIBPATH=$INSTALL_DIR/$INSTALL_RELATIVE/lib INCPATH=$INSTALL_DIR/$INSTALL_RELATIVE/include make install


# Build and install concurrencykit
cd $CYCLONE_ROOT
repo=https://github.com/concurrencykit/ck.git
echo "Cloning $repo"
git clone $repo
cd ck
./configure
make
DESTDIR=$INSTALL_DIR make install


# Get back to cyclone-bootstrap
cd $CYCLONE_BOOTSTRAP_SRC
cp -v Makefile.config.msys2 Makefile.config


# Fixing up the Makefile - this is a temporary crude workaround
perl -pi -e 's/-shared /-Wl,-undefined -shared /' Makefile
make
DESTDIR=$INSTALL_DIR make install
