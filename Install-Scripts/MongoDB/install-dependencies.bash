#! /bin/bash -v

sudo zypper addrepo -cf http://download.opensuse.org/repositories/server:/database/openSUSE_12.1 databases_12.1 
sudo zypper refresh
sudo zypper install -y mongodb

