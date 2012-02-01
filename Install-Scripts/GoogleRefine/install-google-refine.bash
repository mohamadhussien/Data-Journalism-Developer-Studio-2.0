#! /bin/bash -v
export WHERE=http://google-refine.googlecode.com/files
export WHAT=google-refine-2.5-r2407.tar.gz
export VERSION=`echo ${WHAT}|sed 's/.tar.gz//'`
export DIR=google-refine-2.5

pushd /usr/local
sudo rm -fr ${WHAT} ${DIR}
sudo wget ${WHERE}/${WHAT}
sudo tar xf ${WHAT}
sudo rm ${WHAT}
popd

sudo mkdir -p /usr/local/share/applications
sudo cp google-refine.desktop /usr/local/share/applications/
sudo mkdir -p /usr/local/bin
sudo cp refine /usr/local/bin

pushd ~
sudo tar cf - \
  /usr/local/share/applications/google-refine.desktop \
  /usr/local/bin/refine \
  /usr/local/${DIR} \
  | bzip2 -9c > ${VERSION}.tar.bz2
popd
