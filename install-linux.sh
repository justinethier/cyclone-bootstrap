#!/bin/bash
# TODO: allow PREFIX to be specified on command line

sudo make install-deps && \
  make libcyclone.a && \
  sudo make install-libs && \ 
  make cyclone && \
  sudo make install-cyclone && \
  make icyc && \
  sudo make install-icyc && \
  make unit-tests && \
  sudo make install
