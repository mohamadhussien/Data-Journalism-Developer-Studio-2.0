#! /bin/bash -v

# needed for tesseract
sudo zypper addrepo -cf http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_12.1/Documentation:Tools.repo
sudo zypper refresh

# Google Tesseract optical character recognition engine
sudo zypper install -y tesseract
