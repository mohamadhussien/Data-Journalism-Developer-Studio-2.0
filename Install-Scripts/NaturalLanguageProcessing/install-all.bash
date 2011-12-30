#! /bin/bash -v

for i in wordnet task-view
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
