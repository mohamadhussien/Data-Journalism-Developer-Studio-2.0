#!/bin/bash -v

if [ `uname -p` == 'x86_64' ]
then
  sudo rpm -Uvh http://download1.rstudio.org/rstudio-0.94.110-x86_64.rpm
else
  sudo rpm -Uvh http://download1.rstudio.org/rstudio-0.94.110-i686.rpm
fi
