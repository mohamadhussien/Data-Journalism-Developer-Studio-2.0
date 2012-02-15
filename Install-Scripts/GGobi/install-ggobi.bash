#! /bin/bash -v

sudo mkdir -p /usr/local/src
pushd /usr/local/src
export DIR=ggobi-2.1.9
export WHAT=${DIR}.tar.bz2
export WHERE=http://ggobi.org/downloads
sudo rm -fr ${WHAT} ${DIR}
sudo wget ${WHERE}/${WHAT}
sudo tar xf ${WHAT}
pushd ${DIR}

# the GGobi build croaks if graphviz-devel is installed
sudo zypper --quiet remove -y graphviz-devel
sudo ./configure --with-all-plugins
sudo make 
sudo make install
sudo make ggobirc
sudo mkdir -p /etc/xdg/ggobi
sudo cp ggobirc /etc/xdg/ggobi/ggobirc
sudo /sbin/ldconfig
sudo /sbin/SuSEconfig

# put graphviz-devel back - we need it for Rgraphviz
sudo zypper --quiet install -y graphviz-devel
popd

# clean up
sudo rm -fr ${WHAT} ${DIR}
popd
