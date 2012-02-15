#! /bin/bash -v

# Repository
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_12.1/devel:languages:python.repo
sudo zypper --quiet refresh

sudo zypper --quiet install --no-recommends -y python-devel # for RPy2
sudo zypper --quiet install --no-recommends -y ant # for Mallet
sudo zypper --quiet install --no-recommends -y python-nltk python-idle
sudo zypper --quiet install --no-recommends -y wordnet wordnet-devel
