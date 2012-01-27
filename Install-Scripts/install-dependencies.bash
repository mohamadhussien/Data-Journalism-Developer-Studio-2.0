#!/bin/bash -v

# Repositories
sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/R:/patched/openSUSE_12.1/devel:languages:R:patched.repo # R Patched
sudo zypper addrepo -cf http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_12.1/Documentation:Tools.repo # Tesseract
sudo zypper addrepo -cf http://download.opensuse.org/repositories/Virtualization/openSUSE_12.1/Virtualization.repo # VirtualBox guest tools
sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/perl/openSUSE_12.1/devel:languages:perl.repo # Perl libraries
sudo zypper addrepo -cf http://download.opensuse.org/repositories/X11:/QtDesktop/openSUSE_12.1/X11:QtDesktop.repo # Razor Qt
sudo zypper refresh

# X-Windows base
sudo zypper install -y \
  bash-completion \
  gvim \
  lightdm \
  NetworkManager \
  ntp \
  open-vm-tools \
  open-vm-tools-gui \
  oxygen-icon-theme \
  python-gtk \
  python-xml \
  sudo \
  vim-base \
  vim-data \
  vim-enhanced \
  virtualbox-guest-tools \
  virtualbox-guest-x11 \
  xscreensaver \
  yast2-firewall \
  yast2-ntp-client \
  yast2-sudo

# Openbox
sudo zypper install -y obconf openbox

# Razor Qt
sudo zypper install -y juffed juffed-plugins qlipper qstardict qterminal \
	  qxkb razorqt rssguard

# Studio base
sudo zypper install -y \
  epdfview \
  freeglut-devel \
  gcc-c++ \
  gcc-fortran \
  graphviz \
  graphviz-devel \
  graphviz-gd \
  icedtea-web \
  java-1_6_0-openjdk-devel \
  libcurl-devel \
  libpng14-devel \
  libQtWebKit4 \
  libxml2-devel \
  make \
  MozillaFirefox \
  perl-Browser-Open \
  perl-JSON \
  perl-JSON-XS \
  perl-Net-Twitter \
  perl-WWW-Mechanize \
  perl-YAML \
  perl-YAML-Syck \
  R-patched \
  R-patched-devel \
  ruby \
  tesseract \
  texinfo \
  texlive-bin \
  texlive-bin-latex \
  tk-devel \
  wget

# RStudio Desktop
if [ `uname -m` == 'x86_64' ]
then
  sudo rpm -Uvh http://download1.rstudio.org/rstudio-0.94.110-x86_64.rpm
else
  sudo rpm -Uvh http://download1.rstudio.org/rstudio-0.94.110-i686.rpm
fi
