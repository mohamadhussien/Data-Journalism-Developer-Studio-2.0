#! /bin/bash -v

xhost +
for i in sigil impro-visor system
do
  sudo ./install-${i}.bash 2>&1 | tee ${i}.log
done
