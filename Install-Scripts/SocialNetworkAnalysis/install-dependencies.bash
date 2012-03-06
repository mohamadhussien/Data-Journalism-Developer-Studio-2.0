#! /bin/bash -v

../common/install-python-repositories
sudo zypper --quiet install --no-recommends -y python-networkx
sudo zypper --quiet install --no-recommends -y graphviz graphviz-devel graphviz-gd
