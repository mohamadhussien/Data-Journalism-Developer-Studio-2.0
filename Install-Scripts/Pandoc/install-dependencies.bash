#! /bin/bash -v

sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/haskell/openSUSE_12.1/devel:languages:haskell.repo
sudo zypper --quiet refresh
sudo zypper --quiet install --no-recommends -y pandoc
