#!/bin/bash
source ~/Documents/emsdk/emsdk_env.sh && emmake make -f Makefile-wasm polyfill && emmake make -f Makefile-wasm
