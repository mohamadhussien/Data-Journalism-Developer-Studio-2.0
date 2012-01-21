#! /bin/bash -v

sudo /sbin/chkconfig mongodb on
sudo /etc/init.d/mongodb stop
sudo /etc/init.d/mongodb start
