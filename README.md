[<img src="https://raw.githubusercontent.com/justinethier/cyclone/master/docs/images/cyclone-logo-03-header.png" alt="cyclone-scheme">](http://github.com/justinethier/cyclone)

This repository may be used to build and install Cyclone Scheme on a fresh system.

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

Note this script requires superuser permissions and will prompt for them as needed.

Also, if you install to a custom location, you may need to add the `bin`, `include`, and `lib` directories to your `PATH` in order to run cyclone and complete the installation.

At the moment, Cyclone has only been tested on Linux using GCC. Other platforms may be added in the future.

Documentation
-------------
Run the `cyclone` command to compile a single Scheme file, and the `icyc` command to start the interactive interpreter.

For more information about the Scheme language implemented by Cyclone, see the [R<sup>7</sup>RS Scheme Specification](http://trac.sacrideo.us/wg/wiki).

License
-------
Copyright (C) 2014 [Justin Ethier](http://github.com/justinethier)

License terms TBD
