#! /bin/bash -v

sudo zypper --quiet install --no-recommends -y python-devel # for RPy2
sudo zypper --quiet install --no-recommends -y ant # for Mallet
sudo zypper --quiet install --no-recommends -y python-nltk python-idle
sudo zypper --quiet install --no-recommends -y wordnet wordnet-devel
