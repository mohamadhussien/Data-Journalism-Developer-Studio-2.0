#! /bin/bash

# do the addrepos up front
grep -h addrepo */install-dependencies.bash > addrepos.bash
bash addrepos.bash
sudo zypper refresh

# do all the dependencies first - minimizes babysitting
for i in */cleanup.bash
do
  j=`echo ${i} | sed 's/cleanup.bash//'`
  pushd ${j}
  ./cleanup.bash
  ./install-dependencies.bash 2>&1 | tee dependencies.log
  popd
done

for i in */cleanup.bash
do
  if [ "${i}" == "Perl-packages/cleanup.bash" ]
  then
    echo "skipped"
  elif [ "${i}" == "R-libraries/cleanup.bash" ]
  then
    echo "skipped"
  elif [ "${i}" == "Rcmdr/cleanup.bash" ]
  then
    echo "skipped"
  elif [ "${i}" == "GoogleRefine/cleanup.bash" ]
  then
    echo "skipped"
  else
    j=`echo ${i} | sed 's/cleanup.bash//'`
    pushd ${j}
    ./install-all.bash
    popd
  fi
done
