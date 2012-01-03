#! /bin/bash -v

R --no-save --no-restore < load-plugins.R 2>&1 | tee load-plugins.log
