#! /bin/bash -v

sudo zypper --quiet install --no-recommends -y chromium vpx-tools
sudo zypper --quiet install --no-recommends -y v8-devel libvpx-devel
sudo zypper --quiet install --no-recommends -y MozillaFirefox-devel
sudo zypper --quiet install --no-recommends -y seamonkey seamonkey-dom-inspector seamonkey-venkman
sudo zypper --quiet install --no-recommends -y kompozer
