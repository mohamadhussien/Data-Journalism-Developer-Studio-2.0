#! /bin/bash -v

. ~/.bashrc

for i in \
  Sys::Statistics::Linux \
  AnyEvent::Twitter::Stream \
  AnyEvent::IRC \
  AnyEvent::IRC::Connection \
  AnyEvent::IRC::Client \
  AnyEvent::IRC::Util \
  AnyEvent::Intro \
  Browser::Open \
  DBD::SQLite \
  Facebook \
  Hash::Flatten \
  JSON::XS \
  Net::Twitter \
  Statistics::R \
  Statistics::R::Bridge::Linux \
  WWW::Mechanize \
  YAML::Syck \
  Data::Dumper \
  Email::Send::Gmail \
  Email::Send \
  Email::Sender::Simple \
  Email::Simple::Creator \
  Email::Simple \
  HTTP::Client::Parallel \
  Net::Google::Spreadsheets \
  Try::Tiny \
  WebService::Bitly \
  Google::Voice
do
  echo "notest install $i" | cpan 2>&1 | tee $i.log
done
