#! /bin/bash -v

sudo zypper --quiet install --no-recommends -y -t pattern voip
sudo zypper --quiet install --no-recommends -y ekiga
sudo zypper --quiet install --no-recommends -y empathy
