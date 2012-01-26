#! /bin/bash -v
cd ~
gmenu-simple-editor # invoke "Gnome" menu editor
mkdir -p ~/.config/openbox
cp /etc/xdg/openbox/menu.xml ~/.config/openbox/
obmenu # invoke Openbox menu editor
vim ~/.config/openbox/menu.xml
vim .bashrc # get approval before archiving .bashrc!
tar cvf - .bashrc | bzip2 -9c > bashrc.tar.bz2
tar cvf - perl5 | bzip2 -9c > perl5.tar.bz2
tar cvf - R | bzip2 -9c > R.tar.bz2
tar cvf - \
  local \
  .local/share/applications/google-refine.desktop \
  .local/share/applications/R.desktop \
  .config/openbox \
  .vimrc \
  .gvimrc \
  | bzip2 -9c > local.tar.bz2
