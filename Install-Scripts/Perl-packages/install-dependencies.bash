#! /bin/bash -v

sudo zypper install -y perl-YAML perl-libwww-perl perl-Sub-Identify \
  perl-Crypt-SSLeay perl-YAML-Syck perl-IO-Socket-SSL perl-Net-SSLeay \
  perl-JSON::XS
wget http://search.cpan.org/CPAN/authors/id/A/AP/APEIRON/local-lib-1.008004.tar.gz
