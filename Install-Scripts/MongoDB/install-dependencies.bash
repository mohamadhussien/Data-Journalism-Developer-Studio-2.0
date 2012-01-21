#! /bin/bash -v

sudo zypper addrepo -n databases_12.1 -cf http://download.opensuse.org/repositories/server:/database/openSUSE_12.1/server:database.repo
sudo zypper refresh
sudo zypper install -y mongodb
