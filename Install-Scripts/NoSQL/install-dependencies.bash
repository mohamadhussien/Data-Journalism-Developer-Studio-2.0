#! /bin/bash -v

sudo zypper addrepo -n databases_12.1 -cf http://download.opensuse.org/repositories/server:/database/openSUSE_12.1/server:database.repo
sudo zypper refresh
sudo zypper install -y couchdb
sudo zypper install -y mongodb
sudo zypper install -y redis

for i in redis couchdb mongodb
do
  sudo /sbin/chkconfig ${i} on
  sudo /etc/init.d/${i} stop
  sudo /etc/init.d/${i} start
done
