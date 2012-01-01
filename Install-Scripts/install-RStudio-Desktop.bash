#!/bin/bash -v

if [ `uname -m` == 'x86_64' ]
then
  sudo rpm -Uvh http://download1.rstudio.org/rstudio-0.94.110-x86_64.rpm
else
  sudo rpm -Uvh http://download1.rstudio.org/rstudio-0.94.110-i686.rpm
fi

# hack rstudio executable to unset JAVA_HOME
if [ ! -e "/usr/lib/rstudio/bin/rstudio.exe" ]
then
  pushd /usr/lib/rstudio/bin
  sudo mv rstudio rstudio.exe
  popd
  sudo cp rstudio /usr/lib/rstudio/bin
fi
