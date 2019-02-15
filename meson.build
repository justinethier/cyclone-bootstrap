project('cyclone', 'c')
compiler = meson.get_compiler('c')
add_global_arguments('-DCYC_INSTALL_SLD=""', language: 'c')
add_global_arguments('-DCYC_INSTALL_LIB=""', language: 'c')
add_global_arguments('-DCYC_INSTALL_INC=""', language: 'c')
add_global_arguments('-DCYC_INSTALL_DIR="."', language: 'c')
add_global_arguments('-DCYC_CC_PROG=""', language: 'c')
add_global_arguments('-DCYC_CC_EXEC=""', language: 'c')
add_global_arguments('-DCYC_CC_LIB=""', language: 'c')
add_global_arguments('-DCYC_CC_SO=""', language: 'c')
cyclone_sources = [
        './runtime.c',
        './dispatch.c',
        './hashset.c',
        './mstreams.c',
        './cyclone.c',
        './gc.c',
        './scheme/eval.c',
        './scheme/char.c',
        './scheme/lazy.c',
        './scheme/inexact.c',
        './scheme/repl.c',
        './scheme/base.c',
        './scheme/complex.c',
        './scheme/read.c',
        './scheme/process-context.c',
        './scheme/time.c',
        './scheme/file.c',
        './scheme/load.c',
        './scheme/case-lambda.c',
        './scheme/write.c',
        './scheme/cyclone/match.c',
        './scheme/cyclone/ast.c',
        './scheme/cyclone/pretty-print.c',
        './scheme/cyclone/common.c',
        './scheme/cyclone/util.c',
        './scheme/cyclone/macros.c',
        './scheme/cyclone/array-list.c',
        './scheme/cyclone/hashset.c',
        './scheme/cyclone/primitives.c',
        './scheme/cyclone/transforms.c',
        './scheme/cyclone/libraries.c',
        './scheme/cyclone/cps-optimizations.c',
        './scheme/cyclone/test.c',
        './scheme/cyclone/cgen.c',
        './scheme/cxr.c',
        './srfi/1.c',
        './srfi/2.c',
        './srfi/9.c',
        './srfi/18.c',
        './srfi/27.c',
        './srfi/28.c',
        './srfi/60.c',
        './srfi/69.c',
        './srfi/106.c',
        './srfi/111.c',
        './srfi/117.c',
        './srfi/113.c',
        './srfi/121.c',
        './srfi/128.c',
        './srfi/132.c',
        './srfi/133.c',
        './srfi/143.c'
    ]
incdir = include_directories('include')

tommath_inc = include_directories('/usr/local/include')
tommath_lib = static_library('tommath', objects: '/usr/local/lib/libtommath.a')
tommath_dep = declare_dependency(link_with: tommath_lib, include_directories: tommath_inc)

cyclone_lib = shared_library('cyclone', cyclone_sources, include_directories: incdir, dependencies: tommath_dep)
executable('icyc', 'icyc.c', link_with: cyclone_lib, include_directories: incdir)
