#! /bin/bash -v

for i in system rapache
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
