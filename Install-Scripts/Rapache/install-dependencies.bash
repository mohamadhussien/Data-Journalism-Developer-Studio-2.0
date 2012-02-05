#! /bin/bash -v

sudo zypper addrepo -cf http://download.opensuse.org/repositories/network:/utilities/openSUSE_12.1/network:utilities.repo
sudo zypper refresh

sudo zypper install --no-recommends -y apache2 apache2-devel apache2-doc apache2-prefork \
  apache2-utils yast2-http-server awstats
