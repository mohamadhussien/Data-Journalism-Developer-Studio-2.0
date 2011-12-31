#! /bin/bash -v

# for building packages
sudo zypper install -y make gcc gcc-c++ gcc-fortran java-1_6_0-openjdk-devel

# needed for LaTeX / SWeave
sudo zypper install -y texlive-bin-latex texlive-bin libxml2-devel texinfo

# needed for R compile from source and packages
sudo zypper install -y freeglut-devel libpng14-devel libpng14-compat-devel \
  tk-devel
