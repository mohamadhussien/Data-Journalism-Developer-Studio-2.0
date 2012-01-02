#! /bin/bash -v

cp bashrc ~/.bashrc # define the ls conveniences
source ~/.bashrc

# install Linux dependencies
if [ "$1" != "--appliance" ]
then
  ./install-dependencies.bash 2>&1 | tee install-dependencies.log # my additions
  ./install-R.bash 2>&1 | tee install-R.log
  ./install-RStudio-Desktop.bash 2>&1 | tee install-RStudio-Desktop.log
fi

# R should be here now - run R CMD javareconf as root
sudo R CMD javareconf

# install Perl packages
pushd Perl-packages
./install-dependencies.bash
./install-all.bash
popd

# install R libraries
pushd R-libraries
./install-dependencies.bash
./install-all.bash
popd

# install R Commander
pushd Rcmdr
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
