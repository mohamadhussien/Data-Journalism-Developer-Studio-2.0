#! /bin/bash -v

sudo /sbin/chkconfig couchdb on
sudo /etc/init.d/couchdb stop
sudo /etc/init.d/couchdb start
