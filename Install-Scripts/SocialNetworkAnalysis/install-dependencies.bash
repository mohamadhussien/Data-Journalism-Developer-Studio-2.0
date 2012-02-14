#! /bin/bash -v

# Repository
sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_12.1/devel:languages:python.repo
sudo zypper refresh

# Python tools for Network analysis
sudo zypper install --no-recommends -y python-devel python-idle python-networkx
sudo zypper install --no-recommends -y python-numpy python-matplotlib

sudo zypper install --no-recommends -y graphviz graphviz-devel graphviz-gd graphviz-gnome
