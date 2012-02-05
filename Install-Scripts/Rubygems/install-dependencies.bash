#! /bin/bash -v

sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/ruby:/extensions/openSUSE_12.1/devel:languages:ruby:extensions.repo
sudo zypper refresh

sudo zypper install --no-recommends -y rubygem-mechanize rubygem-sqlite3 \
  rubygem-json
