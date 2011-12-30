#! /bin/bash -v

sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/server:/database/openSUSE_Factory/server:database.repo
sudo zypper addrepo -cf \
  http://download.opensuse.org/repositories/Virtualization:/Cloud:/OpenStack:/Diablo/openSUSE_12.1/Virtualization:Cloud:OpenStack:Diablo.repo
sudo zypper refresh

sudo zypper install -y redis couchdb mongodb riak
for i in redis couchdb mongodb riak
do
  sudo /sbin/chkconfig ${i} on
  sudo /etc/init.d/${i} stop
  sudo /etc/init.d/${i} start
done
