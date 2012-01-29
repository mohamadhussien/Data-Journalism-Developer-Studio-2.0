#! /bin/bash -v

cat bashrc >> ~/.bashrc # define the ls conveniences
vim ~/.bashrc
source ~/.bashrc

cp vimrc ~/.vimrc
mkdir -p ~/.config/openbox; cp -a openbox-conf/* ~/.config/openbox/
mkdir -p ~/.config/lxterminal; cp -a lxterminal-conf/* ~/.config/lxterminal/
mkdir -p ~/.local/share/applications
