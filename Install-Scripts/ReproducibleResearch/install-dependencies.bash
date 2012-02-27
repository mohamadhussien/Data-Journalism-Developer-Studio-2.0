#! /bin/bash -v

# sigh - need the *whole* texlive-latex for pgfSweave :-(
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/Publishing/openSUSE_12.1/Publishing.repo # LaTeX stuff
sudo zypper --quiet refresh
#sudo zypper --quiet install --no-recommends -y texlive texlive-latex texlive-xetex

# For Sweave / LyX
sudo zypper --quiet install --no-recommends -y lyx
