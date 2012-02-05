#! /bin/bash -v

../common/install-postgresql.bash

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

sudo zypper install --no-recommends -y evolution evolution-data-server evolution-webcal \
  nautilus-sendto-plugin-evolution

sudo zypper install --no-recommends -y -t pattern voip
sudo zypper install --no-recommends -y ekiga
sudo zypper install --no-recommends -y empathy nautilus-sendto-plugin-empathy

sudo zypper install --no-recommends -y tracker tracker-miner-evolution tracker-miner-files \
  tracker-miner-flickr tracker-miner-rss tracker-gui \
  gnome-panel-applet-tracker nautilus-extension-tracker-tags \
  tracker-miner-firefox
