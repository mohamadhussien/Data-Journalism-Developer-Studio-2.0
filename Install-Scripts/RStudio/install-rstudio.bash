#!/bin/bash -v

if [ `uname -m` == 'x86_64' ]
then
  sudo rpm -Uvh http://download1.rstudio.org/rstudio-0.95.261-x86_64.rpm
else
  sudo rpm -Uvh http://download1.rstudio.org/rstudio-0.95.261-i686.rpm
fi
