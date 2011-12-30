#! /bin/bash -v

sudo R CMD javareconf
if [ `uname -m` != 'x86_64' ]
then
  mkdir -p ~/R/i586-suse-linux-gnu-library/2.14
else
fi

for i in system
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
