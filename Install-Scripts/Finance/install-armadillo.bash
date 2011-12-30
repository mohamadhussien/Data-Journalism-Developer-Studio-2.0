#! /bin/bash -v

sudo mkdir -p /usr/local/src
cd /usr/local/src
export FILES='http://sourceforge.net/projects/arma/files/'
export VERSION=`curl -s ${FILES}|grep tar\.gz|head -n 1|sed 's/^.*armadillo-//'|sed 's/\.tar\.gz.*$//'`
export DIR=armadillo-${VERSION}
export WHAT=${DIR}.tar.gz
export WHERE=http://downloads.sourceforge.net/arma
sudo rm -fr ${WHAT} ${DIR}
sudo wget ${WHERE}/${WHAT}
sudo tar xf ${WHAT}
cd ${DIR}
sudo cmake .
sudo make
sudo make install
cd ..

sudo /sbin/ldconfig
sudo /sbin/SuSEconfig

# clean up
sudo rm -fr ${WHAT} ${DIR}
