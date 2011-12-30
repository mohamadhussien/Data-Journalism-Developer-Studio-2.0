#!/bin/bash -v

sudo zypper addrepo -cf \
http://download.opensuse.org/repositories/devel:/languages:/R:/patched/openSUSE_12.1/devel:languages:R:patched.repo

sudo zypper refresh
sudo zypper install -y R-patched R-patched-devel
