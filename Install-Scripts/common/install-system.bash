#! /bin/bash -v

pushd ../common/; sudo ./update-libraries.bash; popd
R --vanilla --slave < load-system.R 2>&1 | tee load-system.log
