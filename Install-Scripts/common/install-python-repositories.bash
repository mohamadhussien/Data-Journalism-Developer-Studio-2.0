#!/bin/bash -v

sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_12.1/devel:languages:python.repo
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/devel:/libraries:/c_c++/openSUSE_12.1/devel:libraries:c_c++.repo # Python needs this
sudo zypper refresh

sudo zypper --quiet install --no-recommends -y python-devel
sudo zypper --quiet install --no-recommends -y python-idle
sudo zypper --quiet install --no-recommends -y python-numpy
sudo zypper --quiet install --no-recommends -y python-matplotlib
