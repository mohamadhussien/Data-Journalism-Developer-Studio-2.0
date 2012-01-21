#! /bin/bash -v

sudo /sbin/chkconfig redis on
sudo /etc/init.d/redis stop
sudo /etc/init.d/redis start
