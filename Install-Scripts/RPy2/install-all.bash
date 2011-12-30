#! /bin/bash -v

for i in rpy2
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
