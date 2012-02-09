#! /bin/bash -v

for i in mallet rpy2 task-view
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
