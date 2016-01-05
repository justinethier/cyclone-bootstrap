#!/bin/bash

for ((n=0;n<100;n++))
do 
  echo "Running cyclone $n"
  ./cyclone icyc.scm > debug.out 2>&1
  if [ $? -ne 0 ]
  then
    break
  fi
done
