#! /bin/bash -v

cat bashrc >> ~/.bashrc # define the ls conveniences
vim ~/.bashrc
source ~/.bashrc

for i in desktop-conf/*
do
  mkdir -p ~/.${i}
  cp -a desktop-conf/${i}/* ~/.{i}/
done
