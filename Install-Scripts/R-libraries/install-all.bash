#! /bin/bash -v

rm -fr ~/R # start with a clean slate
if [ `uname -m` != 'x86_64' ]
then
  mkdir -p ~/R/i586-suse-linux-gnu-library/2.14
else
  mkdir -p ~/R/x86_64-suse-linux-gnu-library/2.14
fi

for i in system
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done
