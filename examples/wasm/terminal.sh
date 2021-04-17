#!/bin/bash
/home/justin/Documents/emsdk/upstream/emscripten/emcc examples/wasm/terminal.c  -g4 -fPIC -Wall -Wno-shift-negative-value -Wno-unused-command-line-argument -Iinclude -c -o terminal.o

/home/justin/Documents/emsdk/upstream/emscripten/emcc terminal.o scheme/base.o scheme/write.o scheme/cyclone/common.o \
  scheme/file.o \
  scheme/char.o \
  srfi/18.o \
  srfi/69.o \
  scheme/cyclone/hashset.o \
  scheme/cyclone/primitives.o \
  scheme/process-context.o \
  scheme/read.o \
  scheme/cyclone/util.o \
  scheme/cyclone/libraries.o \
  scheme/eval.o \
  scheme/repl.o \
 -g -pthread -lcyclone -lm -lcyclonebn -ldl -L.  -o terminal.html \
 -s USE_PTHREADS=1 -s WASM=1 -s INITIAL_MEMORY=33554432 -s PROXY_TO_PTHREAD --source-map-base http://localhost/cyclone-bootstrap/ \
 -s ASSERTIONS=2 -s SAFE_HEAP=1 -s STACK_OVERFLOW_CHECK=1 \
 -s "EXTRA_EXPORTED_RUNTIME_METHODS=['ccall', 'cwrap']"

#/home/justin/Documents/emsdk/upstream/emscripten/emcc terminal.o scheme/base.o scheme/write.o scheme/cyclone/common.o -g4 -pthread -lcyclone -lm -lcyclonebn -ldl -L.  -Wl,--export-dynamic -o terminal.html -s USE_PTHREADS=1 -s WASM=1 -s INITIAL_MEMORY=33554432 -s PROXY_TO_PTHREAD --source-map-base http://localhost/cyclone-bootstrap/

