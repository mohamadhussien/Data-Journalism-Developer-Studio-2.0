#!/bin/bash -v

sudo zypper addrepo -cf http://download.opensuse.org/repositories/X11:/QtDesktop/openSUSE_12.1/X11:QtDesktop.repo
sudo zypper refresh
sudo zypper install -y qlipper qterminal razorqt rssguard
