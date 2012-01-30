#! /bin/bash -v
export WHERE=http://google-refine.googlecode.com/files
export WHAT=google-refine-2.5-r2407.tar.gz
export VERSION=`echo ${WHAT}|sed 's/.tar.gz//'`
export DIR=google-refine

mkdir -p ~/local
pushd ~/local/
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
rm ${WHAT}
mv google-refine-* ${DIR}
popd

mkdir -p ~/.local/share/applications
sed s:HOME:$HOME: google-refine.desktop > \
  ~/.local/share/applications/google-refine.desktop
sed s:HOME:$HOME: google-refine-browser.desktop > \
  ~/.local/share/applications/google-refine-browser.desktop

pushd ~
tar cf - \
  .local/share/applications/google-refine*desktop \
  local/${DIR} \
  | bzip2 -9c > ${VERSION}.tar.bz2
popd
