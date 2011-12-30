#! /bin/bash -v

sudo mkdir -p /usr/local/src
cd /usr/local/src
export DIR=WordNet-3.0
export WHAT=${DIR}.tar.bz2
export WHERE=http://wordnetcode.princeton.edu/3.0
sudo rm -fr ${WHAT} ${DIR}
sudo wget ${WHERE}/${WHAT}
sudo tar xf ${WHAT}
cd ${DIR}
sudo ./configure
sudo make
sudo make install
cd ..

sudo /sbin/ldconfig
sudo /sbin/SuSEconfig

# clean up
sudo rm -fr ${WHAT} ${DIR}
