#!/bin/bash
/home/justin/Documents/emsdk/upstream/emscripten/emcc examples/wasm/hello-world.c  -g4 -fPIC -Wall -Wno-shift-negative-value -Wno-unused-command-line-argument -Iinclude -c -o hello-world.o

/home/justin/Documents/emsdk/upstream/emscripten/emcc hello-world.o scheme/base.o scheme/write.o scheme/cyclone/common.o \
 -g -pthread -lcyclone -lm -lcyclonebn -ldl -L.  -o hello-world.html \
 -s USE_PTHREADS=1 -s WASM=1 -s INITIAL_MEMORY=33554432 -s PROXY_TO_PTHREAD --source-map-base http://localhost/cyclone-bootstrap/ \
 -s ASSERTIONS=2 -s SAFE_HEAP=1 -s STACK_OVERFLOW_CHECK=1

#/home/justin/Documents/emsdk/upstream/emscripten/emcc hello-world.o scheme/base.o scheme/write.o scheme/cyclone/common.o -g4 -pthread -lcyclone -lm -lcyclonebn -ldl -L.  -Wl,--export-dynamic -o hello-world.html -s USE_PTHREADS=1 -s WASM=1 -s INITIAL_MEMORY=33554432 -s PROXY_TO_PTHREAD --source-map-base http://localhost/cyclone-bootstrap/

