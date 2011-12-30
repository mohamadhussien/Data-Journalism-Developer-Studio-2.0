#! /bin/bash -v

sudo mkdir -p /usr/local/src
pushd /usr/local/src
  export WHERE=http://sigil.googlecode.com/files
  export WHAT=Sigil-0.4.2-Code.zip
  export SDIR=SigilSource
  export BDIR=SigilBuild
  sudo rm -fr ${WHAT} ${SDIR} ${BDIR}
  sudo wget ${WHERE}/${WHAT}
  sudo mkdir -p ${SDIR}
  pushd ${SDIR}
    sudo unzip ../${WHAT}
  popd
  sudo mkdir -p ${BDIR}
  pushd ${BDIR}
    sudo cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release ../${SDIR}
    sudo make
    sudo make install
  popd
  
  # clean up
  sudo rm -fr ${WHAT} ${SDIR} ${BDIR}
popd
