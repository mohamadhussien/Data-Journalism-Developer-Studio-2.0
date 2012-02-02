#! /bin/bash -v

# tools to build from source
export KERNEL=`uname -r|sed 's/^.*-//'`
sudo zypper install kernel-${KERNEL}-devel

# get rid of any VMware tools
sudo zypper remove libvmtools0 open-vm-tools open-vm-tools-gui \
  vmware-guest-kmp-default vmware-guest-kmp-desktop vmware-guest-kmp-pae

# get rid of any VirtualBox ones
sudo zypper remove virtualbox-guest-kmp-default virtualbox-guest-kmp-desktop \
  virtualbox-guest-kmp-pae virtualbox-guest-tools virtualbox-guest-x11

sudo /sbin/yast2 # fix the mkinitrd stuff by hand
