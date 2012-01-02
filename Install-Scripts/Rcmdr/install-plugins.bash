#! /bin/bash -v

export DISPLAY=:0.0
R --no-save --no-restore < load-plugins.R 2>&1 | tee load-plugins.log
