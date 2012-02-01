#! /bin/bash -v

# tools to build from source
export KERNEL=`uname -r|sed 's/^.*-//'`
sudo zypper install kernel-${KERNEL}-devel

# get rid of any existing ones
sudo zypper remove libvmtools0 open-vm-tools open-vm-tools-gui \
  vmware-guest-kmp-default vmware-guest-kmp-desktop vmware-guest-kmp-pae
