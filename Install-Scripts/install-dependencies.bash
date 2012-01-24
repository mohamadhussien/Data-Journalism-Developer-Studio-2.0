#!/bin/bash -v

# IceWM base
sudo zypper install -y alacarte bash-completion iceWMCP iceWMCP-addons \
  icewm-themes lightdm NetworkManager ntp obconf openbox open-vm-tools \
  open-vm-tools-gui sudo virtualbox-guest-tools virtualbox-guest-x11 \
  xscreensaver yast2-firewall yast2-ntp-client yast2-sudo

# IceWM base studio
sudo zypper install -y bash-completion sudo ntp MozillaFirefox icedtea-web \
  ruby wget yast2-sudo yast2-ntp-client yast2-firewall epdfview
