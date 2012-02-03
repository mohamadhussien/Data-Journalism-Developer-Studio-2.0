#! /bin/bash -v

cat bashrc >> ~/.bashrc # define the ls conveniences
vim ~/.bashrc
source ~/.bashrc

mkdir -p ~/.config/openbox; cp -a openbox-conf/* ~/.config/openbox/
mkdir -p ~/.config/lxterminal; cp -a lxterminal-conf/* ~/.config/lxterminal/
mkdir -p ~/.config/lxpanel; cp -a lxpanel-conf/* ~/.config/lxpanel/
mkdir -p ~/.gconf; cp -a browser-conf/* ~/.gconf/
mkdir -p ~/GNUstep; cp -a GNUstep-conf/GNUstep/* ~/GNUstep/
mkdir -p ~/.wmakerconf; cp -a GNUstep-conf/.wmakerconf/* ~/.wmakerconf/
