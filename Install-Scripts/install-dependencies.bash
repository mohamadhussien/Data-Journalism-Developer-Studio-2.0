#!/bin/bash -v

# needed for tesseract
sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/openSUSE:/Factory:/Contrib/openSUSE_12.1/openSUSE:Factory:Contrib.repo
sudo zypper refresh

# wget and git may not be there in appliances
sudo zypper install -y wget

# vim
sudo zypper install -y vim

# command line conveniences
sudo zypper install -y command-not-found findutils-locate bash-completion

# system admin
sudo zypper install -y sudo ntp yast2-sudo yast2-ntp-client

# Just in case there's no browser
sudo zypper install -y MozillaFirefox icedtea-web

# desktop goodies
sudo zypper install -y nautilus-evince nautilus-open-terminal libgnome
