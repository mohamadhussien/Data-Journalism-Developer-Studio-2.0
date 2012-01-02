#! /bin/bash -v

sudo R CMD javareconf
pushd ../common/; sudo ./update-libraries.bash; popd
R --vanilla --slave < load-system.R 2>&1 | tee load-system.log
