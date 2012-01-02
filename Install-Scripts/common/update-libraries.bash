#! /bin/bash -v

R CMD javareconf
R --vanilla --slave < update-libraries.R
