#!/bin/bash

for ((n=0;n<100;n++))
do 
  echo "Running cyclone $n"
  gdb -ex run --eval-command=quit --args ./cyclone icyc.scm 2>debug.out
#gdb -ex run --args ./cyclone unit-tests.scm 2>debug.out
  if [ $? -ne 0 ]
  then
    break
  fi
done
