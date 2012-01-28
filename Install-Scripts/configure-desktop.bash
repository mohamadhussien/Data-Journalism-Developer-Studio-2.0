#! /bin/bash -v

cat bashrc >> ~/.bashrc # define the ls conveniences
vim ~/.bashrc
source ~/.bashrc

cp vimrc ~/.vimrc
cp gvimrc ~/.gvimrc
mkdir -p ~/.config/openbox; cp -a openbox-conf/* ~/.config/openbox/
mkdir -p ~/.config/lxterminal; cp -a lxterminal-conf/* ~/.config/lxterminal/
mkdir -p ~/.local/share/applications
cp LiveInstaller.desktop ~/.local/share/applications/
