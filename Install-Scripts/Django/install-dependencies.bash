#! /bin/bash -v

# Repository
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/python/openSUSE_12.1/devel:languages:python.repo
sudo zypper --quiet refresh

sudo zypper --quiet install --no-recommends -y python-django
