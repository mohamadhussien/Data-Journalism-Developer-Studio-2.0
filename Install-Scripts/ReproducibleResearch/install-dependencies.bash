#! /bin/bash -v

# sigh - need the *whole* texlive-latex for pgfSweave :-(
sudo zypper --quiet install --no-recommends -y texlive texlive-latex texlive-xetex

# For Sweave / LyX
sudo zypper --quiet install --no-recommends -y lyx latex2html \
  latex2html-pngicons texlive-tex4ht
