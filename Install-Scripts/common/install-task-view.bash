#! /bin/bash -v

pushd ../common/; sudo ./update-libraries.bash; popd
R --no-save --no-restore < load-task-view.R 2>&1 | tee load-task-view.log
