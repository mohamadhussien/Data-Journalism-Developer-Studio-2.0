#! /bin/bash -v

unset JAVA_HOME # needed for rJava
R --vanilla --slave < load-system.R 2>&1 | tee load-system.log
