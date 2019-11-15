[<img src="https://raw.githubusercontent.com/justinethier/cyclone/master/docs/images/cyclone-logo-04-bootstrap.png" alt="cyclone-scheme">](http://github.com/justinethier/cyclone)

[![Travis CI](https://travis-ci.org/justinethier/cyclone.svg?branch=master)](https://travis-ci.org/justinethier/cyclone)

[![Github CI](https://github.com/justinethier/cyclone-bootstrap/workflows/CI/badge.svg)](https://github.com/justinethier/cyclone-bootstrap)

[![Github CI - MacOS](https://github.com/justinethier/cyclone-bootstrap/workflows/CI%20MacOS/badge.svg)](https://github.com/justinethier/cyclone-bootstrap)

Cyclone is a brand-new, R<sup>7</sup>RS Scheme-to-C compiler that uses a variant of [Cheney on the MTA](http://www.pipeline.com/~hbaker1/CheneyMTA.html) to implement full tail recursion, continuations, and generational garbage collection.

Cyclone cannot be built directly on a system that does not have Cyclone binaries installed because the compiler is [self-hosting](https://en.wikipedia.org/wiki/Self-hosting). Instead, this repository uses pre-generated C code to build and install Cyclone Scheme on a fresh system. 

Supported Platforms
-------------------

Cyclone has been built and tested on Linux, Mac, Windows (using MSYS), and FreeBSD 12.0 (with clang 6.0.1).

- **Mac Users** - please read [Instructions for building on Mac](README.Mac.md).

- **Windows Users** - please read [Instructions for building on Windows using MSYS](README.Windows.md).

- **FreeBSD Users** - please read [Instructions for building on FreeBSD](README.FreeBSD.md).

Otherwise please follow the instructions below to build and install Cyclone.

Packaged Installations
----------------------

It is possible to install Cyclone via package manager if your system provides one. As of now the only platform that provides packaging is Arch Linux using the [`cyclone-scheme` package](https://aur.archlinux.org/packages/cyclone-scheme/) from the AUR.

On other systems the following prerequisites must be installed before proceeding with the installation steps below.

Prerequisites
-------------

- make
- gcc
- [LibTomMath](https://github.com/libtom/libtommath)
- [Concurrency Kit](http://concurrencykit.org/)

  NOTE: The best way to install `libck` is via a package manager such as `apt-get`. But if a package is not available for this library it can also be built from source. Just replace `0.5.2` below with the latest version available from their website:
    
        wget http://concurrencykit.org/releases/ck-0.5.2.tar.gz
        tar xfz ck-0.5.2.tar.gz ; cd ck-0.5.2 ; ./configure PREFIX=/usr && make all && sudo make install
        sudo ldconfig

On a Debian variant such as Ubuntu the necessary packages may be installed via the command:

    sudo apt-get install libtommath-dev libck-dev make gcc

The following command can be used to install dependencies on Fedora:

    sudo dnf install libtommath-devel ck-devel gcc make

On FreeBSD 12 use the following command:

    sudo pkg install libtommath concurrencykit gmake

Installation
------------

First, [download the latest release](https://github.com/justinethier/cyclone-bootstrap/releases) in either `zip` or `tar.gz` format and unpack the archive.

Use `make` (or `gmake` on FreeBSD) without arguments to install in the default location (`/usr/local`):

    make
    sudo make install
    make test

 or include an argument to specify the install directory, EG:

    make PREFIX=/home/my-username
    make PREFIX=/home/my-username install
    make test

Note:

- When installing to a custom location, you may need to add the corresponding `bin`, `include`, and `lib` directories to your `PATH` in order to run cyclone and complete the installation.

- If you are building on a platform that requires special compiler commands, such as a Raspberry Pi, copy the appropriate `Makefile.config.X` file to `Makefile.config` before doing a build.

At the moment, Cyclone has been tested on Linux using GCC and on FreeBSD 12 with clang 6.0.1. Other platforms may be added in the future.

Documentation
-------------
For more information please return to the main [Cyclone](https://github.com/justinethier/cyclone) page.

License
-------
Copyright (C) 2014 [Justin Ethier](http://github.com/justinethier).

Cyclone is available under the [MIT license](http://www.opensource.org/licenses/mit-license.php).
