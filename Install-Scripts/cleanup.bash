#! /bin/bash -v
common/base-cleanup.bash
for i in */cleanup.bash
do
  j=`echo ${i} | sed 's/cleanup.bash//'`
  pushd ${j}
  ./cleanup.bash
  popd
done
