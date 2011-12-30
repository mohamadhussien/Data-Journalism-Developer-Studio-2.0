#! /bin/bash -v

rm -fr /usr/local/Mondrian
mkdir -p /usr/local/Mondrian
cp mondrian /usr/local/bin/
cp Mondrian.gif /usr/local/Mondrian
cp mondrian.desktop /usr/local/Mondrian
cd /usr/local/Mondrian
wget http://rosuda.org/mondrian/Mondrian.jar
cp /usr/local/Mondrian/mondrian.desktop /usr/local/share/applications/
/sbin/ldconfig
/sbin/SuSEconfig

