#! /bin/bash -v

sudo /sbin/chkconfig riak on
sudo /etc/init.d/riak stop
sudo /etc/init.d/riak start
