#!/bin/bash

# RPy2 - Python / R interface
sudo mkdir -p /usr/local/src; cd /usr/local/src
DIR=rpy2-2.2.1
WHAT=${DIR}.tar.gz
WHERE=http://downloads.sourceforge.net/project/rpy/rpy2/2.2.x
sudo rm -fr ${WHAT} ${DIR}
sudo wget ${WHERE}/${WHAT}
sudo tar xf ${WHAT}
pushd ${DIR}
export PATH=${PATH}:/usr/local/bin
sudo python setup.py install
popd
sudo rm -fr ${WHAT} ${DIR}
