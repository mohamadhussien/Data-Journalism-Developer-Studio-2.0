#! /bin/bash -v
./cleanup.bash
tar cvf - Install-Scripts | bzip2 -9c > Install-Scripts.tar.bz2
git status # just in case
