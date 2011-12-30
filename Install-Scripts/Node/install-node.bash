#! /bin/bash -v

export PATH=$PATH:/usr/local/bin

mkdir -p /usr/local/src
pushd /usr/local/src
export DIR=`curl -s nodejs.org/ | grep '.tar.gz' | head -n 1 | \
  sed 's/^.*href=.*node/node/' | sed 's/.tar.gz.*$//'`
export WHAT=${DIR}.tar.gz
export WHERE=http://nodejs.org/dist/latest
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}

pushd ${DIR}
./configure
make 
make install

/sbin/ldconfig
/sbin/SuSEconfig
popd

# clean up
rm -fr ${WHAT} ${DIR}
popd
