#! /bin/bash -v
cd ~
vim .bashrc # get approval before archiving .bashrc!
tar cvf - .bashrc | bzip2 -9c > bashrc.tar.bz2
tar cvf - \
  .local/share/applications/R.desktop \
  local/R-logo.jpg \
  R \
  | bzip2 -9c > R.tar.bz2
tar cvf - .config/* | bzip2 -9c > config.tar.bz2
