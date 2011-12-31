#! /bin/bash -v

# warning: quantlib takes a *long* time and a lot of space
for i in beancounter quantlib armadillo task-view
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
