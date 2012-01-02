#! /bin/bash -v

R CMD javareconf
R --no-save --no-restore < install-rJava.R
