#! /bin/bash -v

sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/Publishing/openSUSE_12.1/Publishing.repo # LaTeX stuff
sudo zypper --quiet refresh
sudo zypper --quiet install --no-recommends -y texinfo
sudo zypper --quiet install --no-recommends -y texlive-bin
sudo zypper --quiet install --no-recommends -y texlive-bin-latex
