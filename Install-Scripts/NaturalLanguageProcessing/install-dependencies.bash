#! /bin/bash -v

../common/install-python-repositories.bash
sudo zypper --quiet install --no-recommends -y ant # for Mallet
sudo zypper --quiet install --no-recommends -y python-nltk
sudo zypper --quiet install --no-recommends -y wordnet wordnet-devel gsl-devel
sudo zypper --quiet install --no-recommends -y texlive-bin
