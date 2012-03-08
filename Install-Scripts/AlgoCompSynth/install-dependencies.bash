#! /bin/bash -v

sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/multimedia:/apps/openSUSE_12.1/multimedia:apps.repo
sudo zypper --quiet refresh

sudo zypper --quiet install --no-recommends -y rosegarden lilypond
sudo zypper --quiet install --no-recommends -y jack qjackctl
sudo zypper --quiet install --no-recommends -y csound cecilia
sudo zypper --quiet install --no-recommends -y pd-extended
