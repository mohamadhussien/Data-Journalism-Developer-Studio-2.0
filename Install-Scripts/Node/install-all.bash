#! /bin/bash -v

for i in packages
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
