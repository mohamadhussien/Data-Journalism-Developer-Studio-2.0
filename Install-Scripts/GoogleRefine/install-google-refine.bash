#! /bin/bash -v
export WHERE=http://google-refine.googlecode.com/files
export DIR=google-refine-2.5
export VERSION=${DIR}-r2407
export WHAT=${VERSION}.tar.gz

mkdir -p ${HOME}/local
pushd ${HOME}/local
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
rm ${WHAT}
popd

mkdir -p ${HOME}/.local/share/applications
sed "s;\$BASE;${HOME}/local/${DIR};" google-refine.desktop \
  > ${HOME}/.local/share/applications/google-refine.desktop

pushd ~
tar cf - \
  .local/share/applications/google-refine.desktop \
  local/${DIR} \
  | bzip2 -9c > ${VERSION}.tar.bz2
popd
