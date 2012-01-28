#! /bin/bash -v
cd ~
vim .bashrc # get approval before archiving .bashrc!
tar cvf - .bashrc | bzip2 -9c > bashrc.tar.bz2
tar cvf - perl5 | bzip2 -9c > perl5.tar.bz2
tar cvf - R | bzip2 -9c > R.tar.bz2
sudo tar cvf - /usr/local | bzip2 -9c > usr-local.tar.bz2
tar cvf - \
  local \
  .local/share/applications/google-refine.desktop \
  .local/share/applications/google-refine-browser.desktop \
  .local/share/applications/maqetta.desktop \
  .local/share/applications/maqetta-browser.desktop \
  .local/share/applications/R.desktop \
  .config/openbox* \
  .vimrc \
  .gvimrc \
  | bzip2 -9c > local.tar.bz2
