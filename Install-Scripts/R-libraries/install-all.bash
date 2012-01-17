#! /bin/bash -v

rm -fr ~/R # start with a clean slate
if [ `uname -m` != 'x86_64' ]
then
  mkdir -p ~/R/i586-suse-linux-gnu-library/2.14
else
  mkdir -p ~/R/x86_64-suse-linux-gnu-library/2.14
fi

sudo R CMD javareconf
unset JAVA_HOME
for i in system
do
  ./install-${i}.bash 2>&1 | tee ${i}.log
done

mkdir -p ~/local
cp logo.jpg ~/local/R-logo.jpg
mkdir -p ~/.local/share/applications
sed s:HOME:$HOME: R.desktop > ~/.local/share/applications/R.desktop
