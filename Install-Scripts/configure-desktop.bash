#! /bin/bash -v

cat bashrc >> ~/.bashrc # define the ls conveniences
vim ~/.bashrc
source ~/.bashrc

for i in desktop-conf/*
do
  mkdir -p ~/.${i}
  cp -a desktop-conf/${i}/* ~/.{i}/
  pushd ~; tar cvf - .${i} | bzip2 -9c > ${i}.tar.bz2; popd
done
