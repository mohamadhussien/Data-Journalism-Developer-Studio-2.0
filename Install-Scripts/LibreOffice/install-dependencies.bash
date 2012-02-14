#! /bin/bash -v

../common/install-postgresql.bash

sudo zypper addrepo -cf http://download.opensuse.org/repositories/LibreOffice:/Stable/openSUSE_12.1/LibreOffice:Stable.repo
sudo zypper refresh

sudo zypper install --no-recommends -y -t pattern office
sudo zypper install --no-recommends -y libreoffice \
  libreoffice-base \
  libreoffice-base-drivers-postgresql \
  libreoffice-base-extensions \
  libreoffice-calc \
  libreoffice-calc-extensions \
  libreoffice-converter \
  libreoffice-draw \
  libreoffice-draw-extensions \
  libreoffice-filters \
  libreoffice-filters-optional \
  libreoffice-gnome \
  libreoffice-help-en-US \
  libreoffice-hyphen \
  libreoffice-impress \
  libreoffice-impress-extensions \
  libreoffice-languagetool-en \
  libreoffice-mailmerge \
  libreoffice-math \
  libreoffice-openclipart \
  libreoffice-templates-en \
  libreoffice-templates-labels-a4 \
  libreoffice-templates-labels-letter \
  libreoffice-templates-presentation-layouts \
  libreoffice-thesaurus-en-US \
  libreoffice-writer \
  libreoffice-writer-extensions
