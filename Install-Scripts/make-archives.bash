#! /bin/bash -v
cd ~
sudo tar cvf - /usr/local | bzip2 -9c > usr-local.tar.bz2
sudo tar cvf - .bashrc | bzip2 -9c > bashrc.tar.bz2
