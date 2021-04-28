# WASM Build Instructions

These instructions may be used to compile cyclone to web assembly (WASM) using emscripten. 

Note this is still a work in progress and things may not work out of the gate. It may also be necessary to do additional integration work to get things to work on the web. For example, we use wasm-terminal as a web-based REPL rather than a drop-in compiled version of `icyc`.

Anyway, to build:

* Get latest cyclone-bootstrap (this repo)
* Install emscripten sdk: https://emscripten.org/docs/getting_started/downloads.html
* Load emscripten environment: `source ~/Documents/emsdk/emsdk_env.sh` 
* Do ck-polyfill replacements. This is necessary as there were issues porting libck to WASM, so we completely replaced it with equivalent functionality that is slower and not necessarily atomic, but that works in a WASM environment: `emmake make -f Makefile-wasm polyfill`
* Build libraries and the runtime: `emmake make -f Makefile-wasm`

This is all automated by `build-wasm.sh`.
