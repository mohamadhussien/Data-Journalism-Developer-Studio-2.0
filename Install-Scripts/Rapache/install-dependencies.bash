#! /bin/bash -v

sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/network:/utilities/openSUSE_12.1/network:utilities.repo
sudo zypper --quiet refresh

sudo zypper --quiet install --no-recommends -y apache2 apache2-devel apache2-prefork \
  apache2-utils yast2-http-server awstats
