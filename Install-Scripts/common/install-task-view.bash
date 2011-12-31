#! /bin/bash -v

unset JAVA_HOME # needed for rJava
pushd ../common/; sudo ./update-libraries.bash; popd
pushd ../common/; ./update-libraries.bash; popd
R --vanilla --slave < load-task-view.R 2>&1 | tee load-task-view.log
