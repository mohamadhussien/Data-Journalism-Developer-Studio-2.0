#! /bin/bash -v

sudo zypper --quiet install --no-recommends -y -t pattern base
sudo zypper --quiet install --no-recommends -y -t pattern lxde
sudo zypper --quiet install --no-recommends -y -t pattern x11
