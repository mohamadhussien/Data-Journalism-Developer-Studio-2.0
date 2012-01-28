#! /bin/bash -v

export WHERE=http://maqetta.org/downloads
export DIR=maqetta
export \
  WHAT=`curl -s ${WHERE}/|grep '.zip'|sed 's/^.*href=.//'|sed 's/zip.*/zip/'`

mkdir -p ~/local
pushd ~/local
rm -fr ${DIR} ${WHAT}
wget ${WHERE}/${WHAT}
mkdir ${DIR}
unzip -d ${DIR} -n ${WHAT}
chmod +x ${DIR}/*.sh
rm -fr ${WHAT}
popd

cp Maqetta_Logo_250x76.png ~/local/maqetta
mkdir -p ~/.local/share/applications
sed s:HOME:$HOME: maqetta.desktop > ~/.local/share/applications/maqetta.desktop
sed s:HOME:$HOME: maqetta-browser.desktop > \
  ~/.local/share/applications/maqetta-browser.desktop
