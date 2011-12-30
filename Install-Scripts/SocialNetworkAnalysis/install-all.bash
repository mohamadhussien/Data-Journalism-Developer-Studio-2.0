#! /bin/bash -v

for i in system extras
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
