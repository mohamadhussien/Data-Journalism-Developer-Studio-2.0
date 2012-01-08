#!/bin/bash -v

# wget may not be there in appliances
sudo zypper install -y wget

# vim and bash
sudo zypper install -y vim bash-completion

# system admin
sudo zypper install -y sudo ntp yast2-sudo yast2-ntp-client

# Just in case there's no browser
sudo zypper install -y MozillaFirefox icedtea-web

# desktop goodies
sudo zypper install -y nautilus-evince libgnome nautilus-open-terminal
