#! /bin/bash -v

# if the znmeb repository is here, drop it
if [ `zypper -n lr|grep znmeb|wc -l` eq "1" ]
then
  sudo zypper -n rr znmeb_openSUSE_12.1
fi

# install Linux dependencies
if [ "$1" != "--appliance" ]
then
  ./install-dependencies.bash 2>&1 | tee install-dependencies.log # my additions
fi

# install addons
for addon in R-libraries Rcmdr Perl-packages GoogleRefine Maqetta Sigil Calibre
do
  pushd ${addon}
  ./cleanup.bash
  ./install-dependencies.bash 2>&1 | tee dependencies.log
  ./install-all.bash
  popd
done

# make archives
./make-archives.bash 2>&1 | tee make-archives.log
