#! /bin/bash -v

# install Linux dependencies
if [ "$1" != "--appliance" ]
then
  ./install-dependencies.bash 2>&1 | tee install-dependencies.log # my additions
fi

# install addons
for addon in R-libraries Rcmdr Perl-packages GoogleRefine Maqetta Sigil Node \
  Django
do
  pushd ${addon}
  ./cleanup.bash
  ./install-dependencies.bash 2>&1 | tee dependencies.log
  ./install-all.bash
  popd
done

# make archives
./make-archives.bash 2>&1 | tee make-archives.log
