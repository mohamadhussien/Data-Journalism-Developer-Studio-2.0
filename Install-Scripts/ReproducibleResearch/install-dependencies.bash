#! /bin/bash -v

# sigh - need the *whole* texlive-latex for pgfSweave :-(
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/Publishing/openSUSE_Factory/Publishing.repo
sudo zypper --quiet refresh

sudo zypper --quiet install --no-recommends -y lyx
sudo zypper --quiet install --no-recommends -y TeXmacs TeXmacs-examples
sudo zypper --quiet install --no-recommends -y TeX-Guy
sudo zypper --quiet install --no-recommends -y dblatex
sudo zypper --quiet install --no-recommends -y html2text
sudo zypper --quiet install --no-recommends -y latex-driver
sudo zypper --quiet install --no-recommends -y latex2html
sudo zypper --quiet install --no-recommends -y latex2html
sudo zypper --quiet install --no-recommends -y texcad
sudo zypper --quiet install --no-recommends -y texinfo
sudo zypper --quiet install --no-recommends -y texlive-arab
sudo zypper --quiet install --no-recommends -y texlive-cjk
sudo zypper --quiet install --no-recommends -y texlive-cjk-latex-extras
sudo zypper --quiet install --no-recommends -y texlive-fonts-extra
sudo zypper --quiet install --no-recommends -y texlive-jadetex
sudo zypper --quiet install --no-recommends -y texlive-metapost
sudo zypper --quiet install --no-recommends -y texlive-musictex
sudo zypper --quiet install --no-recommends -y texlive-omega
sudo zypper --quiet install --no-recommends -y texlive-ppower4
sudo zypper --quiet install --no-recommends -y texlive-tex4ht
sudo zypper --quiet install --no-recommends -y texlive-tools
sudo zypper --quiet install --no-recommends -y texlive-xmltex
sudo zypper --quiet install --no-recommends -y texmaker
sudo zypper --quiet install --no-recommends -y texworks
sudo zypper --quiet install --no-recommends -y vim-plugin-latex
