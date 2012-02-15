#! /bin/bash -v

# Repository
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_12.1/devel:languages:python.repo
sudo zypper --quiet refresh

# Python tools for Network analysis
sudo zypper --quiet install --no-recommends -y python-devel python-idle python-networkx
sudo zypper --quiet install --no-recommends -y python-numpy python-matplotlib

sudo zypper --quiet install --no-recommends -y graphviz graphviz-devel graphviz-gd graphviz-gnome
