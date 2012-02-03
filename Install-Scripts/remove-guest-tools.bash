#! /bin/bash -v

# first, install tools to build from source
export KERNEL=`uname -r|sed 's/^.*-//'`
sudo zypper install -y kernel-${KERNEL}-devel

# get rid of any VMware tools
sudo zypper remove -y libvmtools0 open-vm-tools open-vm-tools-gui \
  vmware-guest-kmp-default vmware-guest-kmp-desktop vmware-guest-kmp-pae

# get rid of any VirtualBox ones
sudo zypper remove -y virtualbox-guest-kmp-default \
  virtualbox-guest-kmp-desktop virtualbox-guest-kmp-pae virtualbox-guest-tools \
  virtualbox-guest-x11
