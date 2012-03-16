#! /bin/bash -v

# download latest version
rm *unix*.sh
export WHERE="http://downloads.sourceforge.net/project/impro-visor/Impro-Visor%205.11%20Release"
export WHAT="Impro-Visor_unix_5_11.sh"
wget $WHERE/$WHAT

# install
chmod +x ${WHAT}
sudo ./${WHAT}
