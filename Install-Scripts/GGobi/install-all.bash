#! /bin/bash -v

for i in ggobi system
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
