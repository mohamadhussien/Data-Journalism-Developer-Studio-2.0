#! /bin/bash -v
cd ~
tar cvf - .bashrc | bzip2 -9c > bashrc.tar.bz2
tar cvf - perl5 | bzip2 -9c > perl5.tar.bz2
tar cvf - R | bzip2 -9c > R.tar.bz2
tar cvf - local | bzip2 -9c > local.tar.bz2
