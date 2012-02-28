#! /bin/bash -v
./cleanup.bash
tar cvf - \
  Install-Scripts \
  Twitter-Research-Tools \
  | bzip2 -9c > Install-Scripts.tar.bz2
mv Install-Scripts.tar.bz2 ~/saved/
git status # just in case
