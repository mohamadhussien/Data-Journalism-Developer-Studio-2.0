#!/bin/bash -v

./install-repositories.bash 2>&1 | tee repositories.log
./install-packages.bash 2>&1 | tee packages.log
./install-rstudio.bash 2>&1 | tee rstudio.log
