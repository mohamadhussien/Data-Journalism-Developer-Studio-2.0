#! /bin/bash -v

# Python tools for Network analysis
sudo zypper --quiet install --no-recommends -y python-devel python-idle python-networkx
sudo zypper --quiet install --no-recommends -y python-numpy python-matplotlib

sudo zypper --quiet install --no-recommends -y graphviz graphviz-devel graphviz-gd
