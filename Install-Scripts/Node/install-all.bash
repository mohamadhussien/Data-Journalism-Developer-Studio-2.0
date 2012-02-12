#! /bin/bash -v

for i in node packages
do
  sudo ./install-${i}.bash 2>&1 | tee ${i}.log
done
