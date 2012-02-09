#! /bin/bash -v

# Repository
sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_12.1/devel:languages:python.repo
sudo zypper refresh

sudo zypper install --no-recommends -y python-devel # for RPy2
sudo zypper install --no-recommends -y ant # for Mallet
sudo zypper install --no-recommends -y python-nltk python-idle
sudo zypper install --no-recommends -y wordnet wordnet-devel
