#!/bin/bash
# Re-compile everything using EmScripten. This allows our libraries to be linked to Web Assembly programs.
source ~/Documents/emsdk/emsdk_env.sh && emmake make -f Makefile-wasm polyfill && emmake make -f Makefile-wasm
