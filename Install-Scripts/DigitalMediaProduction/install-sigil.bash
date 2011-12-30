#! /bin/bash -v

mkdir -p /usr/local/src
pushd /usr/local/src
  export WHERE=http://sigil.googlecode.com/files
  export WHAT=Sigil-0.4.2-Code.zip
  export SDIR=SigilSource
  export BDIR=SigilBuild
  rm -fr ${WHAT} ${SDIR} ${BDIR}
  wget ${WHERE}/${WHAT}
  mkdir -p ${SDIR}
  pushd ${SDIR}
    unzip ../${WHAT}
  popd
  mkdir -p ${BDIR}
  pushd ${BDIR}
    cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release ../${SDIR}
    make
    make install
  popd
  
  # clean up
  rm -fr ${WHAT} ${SDIR} ${BDIR}
popd
