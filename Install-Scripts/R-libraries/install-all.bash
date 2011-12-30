#! /bin/bash -v

sudo R CMD javareconf
mkdir -p ~/R/i586-suse-linux-gnu-library/2.14

for i in system
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
