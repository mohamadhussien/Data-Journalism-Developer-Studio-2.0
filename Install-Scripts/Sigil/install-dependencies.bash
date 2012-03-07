#! /bin/bash -v

# needed for Sigil
sudo zypper --quiet install --no-recommends -y cmake
sudo zypper --quiet install --no-recommends -y libqt4-devel
sudo zypper --quiet install --no-recommends -y libQtWebKit-devel
sudo zypper --quiet install --no-recommends -y gstreamer-0_10-devel
sudo zypper --quiet install --no-recommends -y boost-devel
sudo zypper --quiet install --no-recommends -y hunspell-devel
sudo zypper --quiet install --no-recommends -y pcre-devel
