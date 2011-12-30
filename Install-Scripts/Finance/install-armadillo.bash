#! /bin/bash -v

mkdir -p /usr/local/src
cd /usr/local/src
export FILES='http://sourceforge.net/projects/arma/files/'
export VERSION=`curl -s ${FILES}|grep tar\.gz|head -n 1|sed 's/^.*armadillo-//'|sed 's/\.tar\.gz.*$//'`
export DIR=armadillo-${VERSION}
export WHAT=${DIR}.tar.gz
export WHERE=http://downloads.sourceforge.net/arma
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
cd ${DIR}
cmake .
make -j 3
make install
cd ..

/sbin/ldconfig
/sbin/SuSEconfig

# clean up
rm -fr ${WHAT} ${DIR}
