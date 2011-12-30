#! /bin/bash -v

sudo zypper install -y perl-YAML perl-libwww-perl perl-Sub-Identify \
  perl-Crypt-SSLeay perl-YAML-Syck perl-IO-Socket-SSL perl-Net-SSLeay \
  perl-AnyEvent perl-AnyEvent-HTTP perl-DBD-SQLite perl-JSON-XS \
  perl-Net-Twitter perl-WWW-Mechanize perl-Try-Tiny
wget http://search.cpan.org/CPAN/authors/id/A/AP/APEIRON/local-lib-1.008004.tar.gz
