#! /bin/bash -v

sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/nodejs/openSUSE_Tumbleweed/devel:languages:nodejs.repo
sudo zypper refresh

sudo zypper install -y nodejs nodejs-devel
