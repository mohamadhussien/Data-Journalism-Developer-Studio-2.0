#! /bin/bash -v

for i in impro-visor
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
