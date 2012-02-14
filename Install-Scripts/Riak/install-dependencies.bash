#! /bin/bash -v

sudo zypper addrepo -n -cf http://download.opensuse.org/repositories/server:/database/openSUSE_Factory databases_Factory 
sudo zypper refresh
sudo zypper --quiet install --no-recommends -y riak
