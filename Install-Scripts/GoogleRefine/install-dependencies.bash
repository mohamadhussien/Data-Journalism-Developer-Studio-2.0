#! /bin/bash -v

# repository where Tesseract lives
sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/openSUSE:/Factory:/Contrib/openSUSE_12.1/openSUSE:Factory:Contrib.repo
sudo zypper refresh

# Google Tesseract optical character recognition engine
sudo zypper install -y tesseract
