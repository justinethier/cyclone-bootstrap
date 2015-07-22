[<img src="https://raw.githubusercontent.com/justinethier/cyclone/master/docs/images/cyclone-logo-03-header.png" alt="cyclone-scheme">](http://github.com/justinethier/cyclone)

The Cyclone Scheme compiler is [self-hosting](https://en.wikipedia.org/wiki/Self-hosting), and requires a fresh copy of itself to compiler. In order to get around that requirement when installing Cyclone for the first time, this repository contains a copy of Cyclone that is already compiled to the necessary C code. This copy may be used to build and install Cyclone Scheme.

Prerequisites
-------------

- make
- gcc

Installation
------------

Run the install script without arguments to install in the default location (`/usr/local`):

    ./install.sh  

 or include an argument to specify the install directory, EG:

    ./install.sh /home/my-username

Note:

- This script requires superuser permissions and will prompt for them as needed.

- When installing to a custom location, you may need to add the corresponding `bin`, `include`, and `lib` directories to your `PATH` in order to run cyclone and complete the installation.

At the moment, Cyclone has only been tested on Linux using GCC. Other platforms may be added in the future.

Documentation
-------------
Run the `cyclone` command to compile a single Scheme file, and the `icyc` command to start the interactive interpreter.

For more information about the Scheme language implemented by Cyclone, see the [R<sup>7</sup>RS Scheme Specification](http://trac.sacrideo.us/wg/wiki).

License
-------
Copyright (C) 2014 [Justin Ethier](http://github.com/justinethier)

License terms TBD
