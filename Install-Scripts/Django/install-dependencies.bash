#! /bin/bash -v

../common/install-python-repositories.bash
sudo zypper --quiet install --no-recommends -y python-django
