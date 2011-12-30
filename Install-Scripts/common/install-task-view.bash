#! /bin/bash -v

unset JAVA_HOME; R CMD javareconf -e # needed for rJava

R --vanilla --slave < load-task-view.R 2>&1 | tee load-task-view.log
