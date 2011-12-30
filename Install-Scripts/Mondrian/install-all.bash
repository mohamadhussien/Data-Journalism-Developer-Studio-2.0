#! /bin/bash -v

for i in mondrian system
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done

cp mondrian.desktop ~/.local/share/applications/
