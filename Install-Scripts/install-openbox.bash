#!/bin/bash -v

# Repositories
sudo zypper addrepo -cf http://download.opensuse.org/repositories/X11:/lxde/openSUSE_12.1/X11:lxde.repo # obmenu is here

# Openbox
sudo zypper install -y obconf obmenu openbox
