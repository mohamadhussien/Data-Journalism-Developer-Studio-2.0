#! /bin/bash -v

sudo zypper addrepo -cf http://download.opensuse.org/repositories/openSUSE:/Factory:/Contrib/openSUSE_12.1/openSUSE:Factory:Contrib.repo
sudo zypper refresh

sudo zypper --quiet install --no-recommends -y gtk-recordmydesktop recordmydesktop
