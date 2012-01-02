#! /bin/bash -v

R CMD javareconf
R --vanilla --slave < install-rJava.R
