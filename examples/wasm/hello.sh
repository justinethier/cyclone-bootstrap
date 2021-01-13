#!/bin/bash
/home/justin/Documents/emsdk/upstream/emscripten/emcc examples/wasm/hello-world.c  -g4 -fPIC -Wall -Wno-shift-negative-value -Wno-unused-command-line-argument -Iinclude -c -o hello-world.o

/home/justin/Documents/emsdk/upstream/emscripten/emcc hello-world.o scheme/base.o scheme/write.o scheme/cyclone/common.o -pthread -lcyclone -lm -lcyclonebn -ldl -L.  -Wl,--export-dynamic -o hello-world.html -s USE_PTHREADS=1 -s WASM=1 -s PROXY_TO_PTHREAD

