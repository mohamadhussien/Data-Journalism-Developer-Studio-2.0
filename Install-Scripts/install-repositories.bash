#!/bin/bash -v

sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/Virtualization:/VMware/openSUSE_12.1_Update/Virtualization:VMware.repo # VMware guest tools
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/perl/openSUSE_12.1/devel:languages:perl.repo # Perl libraries
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/devel:/languages:/R:/base/openSUSE_12.1/devel:languages:R:base.repo
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_12.1/Documentation:Tools.repo # Tesseract and Calibre
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/X11:/lxde/openSUSE_12.1/X11:lxde.repo # LXDE
sudo zypper --quiet addrepo -cf http://download.opensuse.org/repositories/server:/database:/postgresql/openSUSE_12.1/server:database:postgresql.repo # PostgreSQL
sudo zypper --quiet update
