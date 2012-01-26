#! /bin/bash

# do the addrepos up front
grep -h addrepo */install-dependencies.bash | sort -u > addrepos.bash
bash addrepos.bash
sudo zypper update
rm addrepos.bash

pushd ReproducibleResearch # only one that needs babysitting now
  ./cleanup.bash
  ./install-dependencies.bash 2>&1 | tee dependencies.log
  ./install-all.bash 2>&1 | tee all.log
popd

# now do the rest
for i in */cleanup.bash
do
  if [ "${i}" == "Perl-packages/cleanup.bash" ] # done in base
  then
    echo "skipped"
  elif [ "${i}" == "R-libraries/cleanup.bash" ] # done in base
  then
    echo "skipped"
  elif [ "${i}" == "Rcmdr/cleanup.bash" ] # done in base
  then
    echo "skipped"
  elif [ "${i}" == "GoogleRefine/cleanup.bash" ] # done in base
  then
    echo "skipped"
  elif [ "${i}" == "ReproducibleResearch/cleanup.bash" ] # just done here
  then
    echo "skipped"
  else
    j=`echo ${i} | sed 's/cleanup.bash//'`
    pushd ${j}
    ./cleanup.bash
    ./install-dependencies.bash 2>&1 | tee dependencies.log
    ./install-all.bash 2>&1 | tee all.log
    popd
  fi
done
