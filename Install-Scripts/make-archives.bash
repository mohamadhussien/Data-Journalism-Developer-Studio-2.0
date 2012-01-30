#! /bin/bash -v
cd ~
vim .bashrc # get approval before archiving .bashrc!
tar cvf - .bashrc | bzip2 -9c > bashrc.tar.bz2
tar cvf - \
  .local/share/applications/R.desktop \
  R \
  | bzip2 -9c > R.tar.bz2
tar cvf - \
  .config/openbox/* \
  .config/lxterminal/* \
  .config/lxpanel/* \
  | bzip2 -9c > config.tar.bz2
