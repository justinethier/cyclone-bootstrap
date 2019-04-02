project('cyclone', 'c')

compiler = meson.get_compiler('c')

prefix = '/usr/local'
datadir = prefix + '/share/cyclone'
bindir = prefix + '/bin'
libdir = prefix + '/lib'
incdir = prefix + '/include/cyclone'

if meson.get_compiler('c').get_id() != 'clang'
    extra_args = [ '-lm', '-ldl' ]
else
    extra_args = [ ]
endif

CC = compiler
LIBS = '-pthread -lcyclone -lck -lm -ltommath'

CYC_PROFILING = ''
#CYC_PROFILING = '-g -pg'

CYC_GCC_OPT_FLAGS = '-O2'
#CYC_GCC_OPT_FLAGS = '-g'

# Linker options
LDFLAGS = '-L. ' + CYC_PROFILING + ' -Wl,-export_dynamic -Wl,-undefined -Wl,dynamic_lookup'

# Compiler options
CFLAGS  = CYC_PROFILING + CYC_GCC_OPT_FLAGS + ' -fPIC -Wall -Iinclude'
COMP_CFLAGS = CYC_PROFILING + CYC_GCC_OPT_FLAGS + ' -fPIC -Wall -I'+ incdir + '-L' + libdir

# Use these lines instead for debugging or profiling
#CFLAGS = '-g -Wall'
#CFLAGS = '-g -pg -Wall'

# Commands "baked into" cyclone for invoking the C compiler
CC_PROG = '@CC@ ~src-file~ @COMP_CFLAGS@ -c -o ~exec-file~.o'.format(CC, COMP_CFLAGS)
CC_EXEC = '@CC@ ~exec-file~.o ~obj-files~ @LIBS@ @COMP_CFLAGS@ -o ~exec-file~'.format(CC, LIBS, COMP_CFLAGS)
CC_LIB  = '@CC@ ~src-file~ @COMP_CFLAGS@ -c -o ~exec-file~.o'.format(CC, COMP_CFLAGS)
CC_SO   = '@CC@ -shared $@LDFLAGS@ -o ~exec-file~.so ~exec-file~.o'.format(CC, LDFLAGS)

add_global_arguments('-DCYC_INSTALL_SLD="' + datadir + '"', language: 'c')
add_global_arguments('-DCYC_INSTALL_LIB="' + libdir + '"', language: 'c')
add_global_arguments('-DCYC_INSTALL_INC="' + incdir + '"', language: 'c')
add_global_arguments('-DCYC_INSTALL_DIR="' + bindir + '"', language: 'c')
add_global_arguments('-DCYC_CC_PROG="' + CC_PROG + '"', language: 'c')
add_global_arguments('-DCYC_CC_EXEC="' + CC_EXEC + '"', language: 'c')
add_global_arguments('-DCYC_CC_LIB="' + CC_LIB + '"', language: 'c')
add_global_arguments('-DCYC_CC_SO="' + CC_SO + '"', language: 'c')

cyclone_sources = [
        './cyclone.c',
        './dispatch.c',
        './gc.c',
        './hashset.c',
        './mstreams.c',
        './runtime.c',
        './scheme/base.c',
        './scheme/case-lambda.c',
        './scheme/char.c',
        './scheme/complex.c',
        './scheme/cxr.c',
        './scheme/cyclone/array-list.c',
        './scheme/cyclone/ast.c',
        './scheme/cyclone/cgen.c',
        './scheme/cyclone/common.c',
        './scheme/cyclone/cps-optimizations.c',
        './scheme/cyclone/hashset.c',
        './scheme/cyclone/libraries.c',
        './scheme/cyclone/macros.c',
        './scheme/cyclone/match.c',
        './scheme/cyclone/pretty-print.c',
        './scheme/cyclone/primitives.c',
        './scheme/cyclone/test.c',
        './scheme/cyclone/transforms.c',
        './scheme/cyclone/util.c',
        './scheme/eval.c',
        './scheme/file.c',
        './scheme/inexact.c',
        './scheme/lazy.c',
        './scheme/load.c',
        './scheme/process-context.c',
        './scheme/read.c',
        './scheme/repl.c',
        './scheme/time.c',
        './scheme/write.c',
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

libdirs = ['/usr/lib', '/usr/local/lib'] 
concurrency_kit_dep = compiler.find_library('libck', dirs: libdirs)
tommath_dep = compiler.find_library('libtommath', dirs: libdirs)
thread_dep = dependency('threads')
all_deps = [ concurrency_kit_dep, tommath_dep, thread_dep ]

cyclone_lib = shared_library('cyclone', cyclone_sources, include_directories: incdir, dependencies: all_deps, install: true, link_args: extra_args)
executable('icyc', 'icyc.c', link_with: cyclone_lib, include_directories: incdir, install: true, c_args: extra_args)
executable('cyclone', 'cyclone.c', link_with: cyclone_lib, include_directories: incdir, install: true, c_args: extra_args)
