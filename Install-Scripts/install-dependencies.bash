#!/bin/bash -v

./install-repositories.bash 2>&1 | tee repositories.log
./install-patterns.bash 2>&1 | tee patterns.log
./install-packages.bash 2>&1 | tee packages.log
