#! /bin/bash -v

export DIR=mallet-2.0.7
export WHERE=http://mallet.cs.umass.edu/dist

sudo mkdir -p /usr/local/mallet
cd /usr/local/mallet
sudo rm -f ${DIR}.tar.gz
sudo wget ${WHERE}/${DIR}.tar.gz
sudo rm -fr ${DIR}
sudo tar xf ${DIR}.tar.gz
sudo chown -R root.root ${DIR}
sudo chmod -R a+rx ${DIR}
cd ${DIR}
sudo ant
cd ..
sudo rm -f ${DIR}.tar.gz
sudo mktexlsr
sudo /sbin/ldconfig
sudo /sbin/SuSEconfig
