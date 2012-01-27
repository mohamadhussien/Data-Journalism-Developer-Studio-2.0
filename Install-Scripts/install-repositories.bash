#!/bin/bash -v

sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/R:/patched/openSUSE_12.1/devel:languages:R:patched.repo # R Patched
sudo zypper addrepo -cf http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_12.1/Documentation:Tools.repo # Tesseract
sudo zypper addrepo -cf http://download.opensuse.org/repositories/Virtualization/openSUSE_12.1/Virtualization.repo # VirtualBox guest tools
sudo zypper addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/perl/openSUSE_12.1/devel:languages:perl.repo # Perl libraries
sudo zypper addrepo -cf http://download.opensuse.org/repositories/X11:/QtDesktop/openSUSE_12.1/X11:QtDesktop.repo # Razor Qt
sudo zypper update
