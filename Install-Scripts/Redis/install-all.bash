#! /bin/bash -v

for i in system
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
