#! /bin/bash -v

cat bashrc >> ~/.bashrc # define the ls conveniences
vim ~/.bashrc
source ~/.bashrc

pushd desktop-conf
for i in *
do
  mkdir -p ~/.${i}
  cp -a ${i}/* ~/.${i}/
  pushd ~; tar cvf - .${i} | bzip2 -9c > ${i}.tar.bz2; popd
done
popd
