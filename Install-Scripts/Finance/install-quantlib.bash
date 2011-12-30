#! /bin/bash -v

sudo mkdir -p /usr/local/src
cd /usr/local/src
export FILES='http://sourceforge.net/projects/quantlib/files/QuantLib/'
export VERSION=`curl -s ${FILES}|grep tar\.gz|head -n 1|sed 's/^.*QuantLib-//'|sed 's/\.tar\.gz.*$//'`
echo $VERSION
export DIR=QuantLib-${VERSION}
export WHAT=${DIR}.tar.gz
export \
  WHERE=http://downloads.sourceforge.net/project/quantlib/QuantLib/${VERSION}
sudo rm -fr ${WHAT} ${DIR}
sudo wget ${WHERE}/${WHAT}
sudo tar xf ${WHAT}
cd ${DIR}
sudo ./configure
sudo /usr/bin/time make
sudo make install
cd ..

sudo /sbin/ldconfig
sudo /sbin/SuSEconfig

# clean up
sudo rm -fr ${WHAT} ${DIR}
