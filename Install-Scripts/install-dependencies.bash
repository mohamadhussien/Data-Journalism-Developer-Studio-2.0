#!/bin/bash -v

# wget and git may not be there in appliances
sudo zypper install -y wget git-core

# vim
sudo zypper install -y vim

# command line conveniences
sudo zypper install -y command-not-found findutils-locate lynx

# system admin
sudo zypper install -y sudo ntp yast2-sudo yast2-ntp-client

# Just in case there's no browser
sudo zypper install -y MozillaFirefox icedtea-web chromium-desktop-gnome \
  vpx-tools

# desktop goodies
sudo zypper install -y nautilus-evince nautilus-open-terminal nautilus-terminal
