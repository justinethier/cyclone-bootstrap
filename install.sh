#!/bin/bash
# Cyclone Scheme
# http://github.com/justinethier/cyclone
# Copyright (c) 2014, Justin Ethier
# All rights reserved.
#
# This script incrementally builds and installs Cyclone Scheme from scratch.
# Multiple steps are required because of the required dependencies along the way. 
# For example, the compiler depends upon the runtime library, the interpreter 
# is built by the compiler, etc.
#
# USAGE:
# 
# Run without arguments to install in the default location (/usr/local):
#    ./install.sh  
#
# or include an argument to specify the install directory, EG:
#   ./install.sh /home/my-username
#
# NOTES:
#
# - This script requires superuser permissions and will prompt for them as needed.
# - If you install to a custom location, you may need to add the bin, include, and lib
#   directories to your PATH in order to run cyclone and complete the installation.
#

if [ $# -gt 0 ]
then
  PREFIX="PREFIX=$1"
else
  PREFIX=""
fi

make $PREFIX && \
sudo make $PREFIX install && \
make $PREFIX test

