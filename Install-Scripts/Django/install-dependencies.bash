#! /bin/bash -v

# Repository
sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_12.1/devel:languages:python.repo
sudo zypper refresh

sudo zypper install -y python-django
