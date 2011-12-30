#! /bin/bash -v

cp bashrc ~/.bashrc # define the ls conveniences
sudo ./rootstuff.bash

# pull down external stuff
./git-submodule-update.bash

# hack the https
sed 's/https:/http:/' rstudio/dependencies/common/install-gwt > workfile
chmod +x workfile
mv workfile rstudio/dependencies/common/install-gwt

# install Linux dependencies
if [ "$1" != "--appliance" ]
then
  pushd rstudio/dependencies/linux
  ./install-dependencies-zypper
  popd
  ./install-dependencies.bash 2>&1 | tee install-dependencies.log # my additions
else
  pushd rstudio/dependencies/common
  ./install-gwt
  popd
fi

# install R basics
pushd R-compiled
./install-dependencies.bash
./install-all.bash
popd

# install R Commander
pushd Rcmdr
./install-dependencies.bash
./install-all.bash
popd

# build server
sudo rm -fr build; mkdir -p build
pushd build
cmake -DRSTUDIO_TARGET=Server -DCMAKE_BUILD_TYPE=Release \
  ~/Install-Scripts/rstudio
sudo ../install-rstudio-server.bash
popd
./server-setup.bash

# build desktop
sudo rm -fr build; mkdir -p build
pushd build
cmake -DRSTUDIO_TARGET=Desktop -DCMAKE_BUILD_TYPE=Release \
  ~/Install-Scripts/rstudio
sudo ../install-rstudio-desktop.bash
popd
sudo ln -sf /usr/local/lib/rstudio/bin/rstudio /usr/local/bin/rstudio

./make-archives.bash 2>&1 | tee make-archives.log
