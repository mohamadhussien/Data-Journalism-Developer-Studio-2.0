#! /bin/bash -v

../common/install-python-repositories
sudo zypper --quiet install --no-recommends -y python-networkx
