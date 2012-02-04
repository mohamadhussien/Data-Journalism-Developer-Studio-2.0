#! /bin/bash -v

TEST=`/sbin/chkconfig | grep postgresql | wc -l`
if [ "$TEST" != "1" ]
then
  echo "Installing PostgreSQL and friends"
  sudo zypper addrepo -cf http://download.opensuse.org/repositories/server:/database:/postgresql/openSUSE_12.1/server:database:postgresql.repo
  sudo zypper refresh
  sudo zypper install -y postgresql postgresql-devel postgresql-contrib \
    pgadmin3 perl-DBD-Pg
else
  echo "PostgreSQL and friends have already been installed"
fi
