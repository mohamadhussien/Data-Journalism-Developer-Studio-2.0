#! /bin/bash -v

cat bashrc >> ~/.bashrc # define the ls conveniences
vim ~/.bashrc
source ~/.bashrc

mkdir -p ~/.config/libfm; cp -a libfm-conf/* ~/.config/libfm/
mkdir -p ~/.config/lxterminal; cp -a lxterminal-conf/* ~/.config/lxterminal/
mkdir -p ~/.config/lxpanel; cp -a lxpanel-conf/* ~/.config/lxpanel/
mkdir -p ~/.config/lxsession; cp -a lxsession-conf/* ~/.config/lxsession/
mkdir -p ~/.config/openbox; cp -a openbox-conf/* ~/.config/openbox/
mkdir -p ~/.config/pcmanfm; cp -a pcmanfm-conf/* ~/.config/pcmanfm/
mkdir -p ~/.gconf; cp -a browser-conf/* ~/.gconf/
