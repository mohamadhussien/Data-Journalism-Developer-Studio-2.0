#! /bin/bash -v

sudo rm -fr /usr/local/Mondrian
sudo mkdir -p /usr/local/Mondrian
sudo cp mondrian /usr/local/bin/
sudo cp Mondrian.gif /usr/local/Mondrian
sudo cp mondrian.desktop /usr/local/Mondrian
cd /usr/local/Mondrian
sudo wget http://rosuda.org/mondrian/Mondrian.jar
sudo cp /usr/local/Mondrian/mondrian.desktop /usr/local/share/applications/
sudo /sbin/ldconfig
sudo /sbin/SuSEconfig
