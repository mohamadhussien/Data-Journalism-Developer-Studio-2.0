#! /bin/bash -v

# if the znmeb repository is here, drop it
if [ `zypper -n lr|grep znmeb|wc -l` eq "1" ]
then
  sudo zypper -n rr znmeb_openSUSE_12.1
fi

cat bashrc >> ~/.bashrc # define the ls conveniences
source ~/.bashrc

# install Linux dependencies
if [ "$1" != "--appliance" ]
then
  ./install-dependencies.bash 2>&1 | tee install-dependencies.log # my additions
  ./install-R.bash 2>&1 | tee install-R.log
  ./install-RStudio-Desktop.bash 2>&1 | tee install-RStudio-Desktop.log
fi

# R should be here now - update system packages and install rJava
pushd common
sudo ./update-libraries.bash 2>&1 | tee ../update-libraries.log
sudo ./install-rJava.bash 2>&1 | tee ../install-rJava.log
popd

# install local R libraries
pushd R-libraries
./install-dependencies.bash
./install-all.bash
popd

# install R Commander
pushd Rcmdr
./install-dependencies.bash
./install-all.bash
popd

# install Perl packages
pushd Perl-packages
./install-dependencies.bash
./install-all.bash
popd

# install Google Refine and Maqetta
rm -fr ~/local
pushd GoogleRefine
./install-dependencies.bash
./install-all.bash
popd
pushd Maqetta
./install-dependencies.bash
./install-all.bash
popd

# make archives
./make-archives.bash 2>&1 | tee make-archives.log
