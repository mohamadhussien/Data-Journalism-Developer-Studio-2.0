#! /bin/bash -v

rm -fr ~/.cpan ~/perl5 # clean slate
wget \
  http://search.cpan.org/CPAN/authors/id/A/AP/APEIRON/local-lib-1.008004.tar.gz
tar xf local-lib*gz
pushd local-lib*
perl Makefile.PL --bootstrap
make
make test
make install
echo 'eval $(perl -I${HOME}/perl5/lib/perl5 -Mlocal::lib)' >> ~/.bashrc
echo 'export MANPATH=${MANPATH}:${HOME}/perl5/man' >>~/.bashrc
popd

# configure / update cpan
. ~/.bashrc
cpan < prep1.cpan
