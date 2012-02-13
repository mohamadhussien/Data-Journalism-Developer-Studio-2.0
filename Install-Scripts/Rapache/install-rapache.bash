#! /bin/bash -v

export PATH=/usr/local/bin:$PATH
sudo mkdir -p /usr/local/src
pushd /usr/local/src
export WHERE=http://biostat.mc.vanderbilt.edu/rapache
export DIR=rapache-1.1.16
export WHAT=${DIR}.tar.gz
sudo rm -fr ${WHAT} ${DIR}
sudo wget ${WHERE}/${WHAT}
sudo tar xf ${WHAT}
pushd ${DIR}
sudo ./configure --with-apache2-apxs=/usr/sbin/apxs2
sudo make
sudo make install
sudo /sbin/ldconfig
sudo /sbin/SuSEconfig
popd
sudo rm -fr ${WHAT} ${DIR} # clean up
popd
