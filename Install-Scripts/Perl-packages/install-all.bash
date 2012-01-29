#! /bin/bash -v

for i in local-lib packages
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done

./make-archive.bash 2>&1 | tee archive.log
