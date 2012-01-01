#! /bin/bash -v

../common/install-postgresql.bash

sudo zypper install -y gsl gsl-devel cmake boost-devel
