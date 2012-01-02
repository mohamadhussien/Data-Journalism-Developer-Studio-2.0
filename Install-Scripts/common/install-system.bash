#! /bin/bash -v

export DISPLAY=:0.0
pushd ../common/; sudo ./update-libraries.bash; popd
R --no-save --no-restore < load-system.R 2>&1 | tee load-system.log
