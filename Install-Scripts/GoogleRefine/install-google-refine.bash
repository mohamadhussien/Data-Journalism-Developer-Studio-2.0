#! /bin/bash -v
export WHERE=http://google-refine.googlecode.com/files
export WHAT=google-refine-2.5-r2407.tar.gz
export DIR=google-refine

mkdir -p ~/local
pushd ~/local/
rm -fr ${WHAT} ${DIR}
wget ${WHERE}/${WHAT}
tar xf ${WHAT}
rm ${WHAT}
popd

sed s:HOME:$HOME: google-refine.desktop > \
  ~/.local/share/applications/google-refine.desktop
