#! /bin/bash -v
export WHERE=http://google-refine.googlecode.com/files
export WHAT=google-refine-2.5-r2407.tar.gz
export VERSION=`echo ${WHAT}|sed 's/.tar.gz//'`
export DIR=google-refine-2.5

mkdir -p ${HOME}/local
pushd ${HOME}/local
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
rm ${WHAT}
popd

mkdir -p ${HOME}/.local/share/applications
sed "s;\$HOME;${HOME};" google-refine.desktop \
  > ${HOME}/.local/share/applications/google-refine.desktop

pushd ~
tar cf - \
  .local/share/applications/google-refine.desktop \
  local/${DIR} \
  | bzip2 -9c > ${VERSION}.tar.bz2
popd
