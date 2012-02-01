#! /bin/bash -v

# tools to build from source
export KERNEL=`uname -r|sed 's/^.*-//'`
sudo zypper install kernel-${KERNEL}-devel

# get rid of any existing ones
sudo zypper remove virtualbox-guest-kmp-default virtualbox-guest-kmp-desktop \
  virtualbox-guest-kmp-pae virtualbox-guest-tools virtualbox-guest-x11
