#! /bin/bash -v

# sigh - need the *whole* texlive-latex for pgfSweave :-(
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/Publishing/openSUSE_12.1/Publishing.repo # LaTeX stuff
sudo zypper --quiet refresh

# LyX brings in everything we need
sudo zypper --quiet install --no-recommends -y lyx
