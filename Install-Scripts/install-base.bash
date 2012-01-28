#! /bin/bash -v

# if the znmeb repository is here, drop it
if [ `zypper -n lr|grep znmeb|wc -l` eq "1" ]
then
  sudo zypper -n rr znmeb_openSUSE_12.1
fi

cat bashrc >> ~/.bashrc # define the ls conveniences
vim ~/.bashrc
source ~/.bashrc

cp vimrc ~/.vimrc
cp gvimrc ~/.gvimrc
mkdir -p ~/.config/openbox; cp -a openbox-conf/* ~/.config/openbox/
mkdir -p ~/.razor; cp -a razor-conf/* ~/.razor/

# install Linux dependencies
if [ "$1" != "--appliance" ]
then
  ./install-dependencies.bash 2>&1 | tee install-dependencies.log # my additions
fi

# install local R libraries
pushd R-libraries
./cleanup.bash
./install-dependencies.bash 2>&1 | tee dependencies.log
./install-all.bash
popd

# install R Commander
pushd Rcmdr
./cleanup.bash
./install-dependencies.bash 2>&1 | tee dependencies.log
./install-all.bash
popd

# install Perl packages
pushd Perl-packages
./cleanup.bash
./install-dependencies.bash 2>&1 | tee dependencies.log
./install-all.bash
popd

# install Google Refine
pushd GoogleRefine
./cleanup.bash
./install-dependencies.bash 2>&1 | tee dependencies.log
./install-all.bash
popd

# install Maqetta
pushd Maqetta
./cleanup.bash
./install-dependencies.bash 2>&1 | tee dependencies.log
./install-all.bash
popd

# install Sigil
pushd Sigil
./cleanup.bash
./install-dependencies.bash 2>&1 | tee dependencies.log
./install-all.bash
popd

# make archives
./make-archives.bash 2>&1 | tee make-archives.log
