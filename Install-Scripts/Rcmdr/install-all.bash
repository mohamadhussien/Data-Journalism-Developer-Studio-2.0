#! /bin/bash -v

xhost +
sudo ./install-system.bash 2>&1 | tee system.log
./install-plugins.bash 2>&1 | tee plugins.log
