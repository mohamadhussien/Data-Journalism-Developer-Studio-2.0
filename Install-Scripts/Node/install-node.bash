#! /bin/bash -v

sudo mkdir -p /usr/local/src
pushd /usr/local/src
export DIR=`curl -s nodejs.org/ | grep '.tar.gz' | head -n 1 | \
  sed 's/^.*href=.*node/node/' | sed 's/.tar.gz.*$//'`
export WHAT=${DIR}.tar.gz
export WHERE=http://nodejs.org/dist/latest
sudo rm -fr ${WHAT} ${DIR}
sudo wget ${WHERE}/${WHAT}
sudo tar xf ${WHAT}

pushd ${DIR}
sudo ./configure
sudo make 
sudo make install

sudo /sbin/ldconfig
sudo /sbin/SuSEconfig
popd

# clean up
sudo rm -fr ${WHAT} ${DIR}
popd
