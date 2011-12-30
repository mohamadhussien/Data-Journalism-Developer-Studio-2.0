#! /bin/bash -v

export FILES='http://sourceforge.net/projects/impro-visor/files/'
export VERSION=`curl -s ${FILES}|grep Impro-Visor_unix|head -n 1|sed 's/^.*unix_//'|sed 's/.sh.*$//'`

# download latest version
rm *unix*.sh
export WHERE='http://downloads.sourceforge.net/project/impro-visor'
export WHAT="Impro-Visor_unix_${VERSION}.sh"
wget $WHERE/$WHAT

# install
chmod +x ${WHAT}
sudo ./${WHAT}
