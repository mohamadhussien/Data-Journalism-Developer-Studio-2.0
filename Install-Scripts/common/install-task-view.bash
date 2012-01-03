#! /bin/bash -v

R --no-save --no-restore < load-task-view.R 2>&1 | tee load-task-view.log
