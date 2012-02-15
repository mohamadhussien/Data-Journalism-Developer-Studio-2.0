#! /bin/bash -v

sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/server:/database/openSUSE_12.1 databases_12.1 
sudo zypper --quiet refresh
sudo zypper --quiet install --no-recommends -y redis-2.4.1-4.1 # this version needed for dependencies
