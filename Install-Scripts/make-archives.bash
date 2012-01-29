#! /bin/bash -v
cd ~
vim .bashrc # get approval before archiving .bashrc!
tar cvf - .bashrc | bzip2 -9c > bashrc.tar.bz2
tar cvf - perl5 | bzip2 -9c > perl5.tar.bz2
tar cvf - \
  .local/share/applications/R.desktop \
  R \
  | bzip2 -9c > R.tar.bz2
tar cvf - \
  .config/openbox/* \
  .config/lxterminal/* \
  | bzip2 -9c > config.tar.bz2
