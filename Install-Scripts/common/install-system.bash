#! /bin/bash -v

R --no-save --no-restore < load-system.R 2>&1 | tee load-system.log
