#! /bin/bash -v

# needed for Sigil
sudo zypper --quiet install --no-recommends -y cmake libqt4-devel libQtWebKit-devel gstreamer-0_10-devel boost-devel
sudo zypper --quiet install --no-recommends -y libxerces-c-devel
sudo zypper --quiet install --no-recommends -y hunspell-devel
sudo zypper --quiet install --no-recommends -y pcre-devel
