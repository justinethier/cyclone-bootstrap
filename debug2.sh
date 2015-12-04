#!/bin/bash

#for ((n=0;n<100;n++))
#do 
#  echo "Running cyclone $n"
gdb ./cyclone 2>debug.out
#  if [ $? -ne 0 ]
#  then
#    break
#  fi
#done
