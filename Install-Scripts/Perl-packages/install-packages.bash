#! /bin/bash -v

. ~/.bashrc

for i in \
  Sys::Statistics::Linux \
  AnyEvent::Twitter::Stream \
  AnyEvent::IRC \
  AnyEvent::IRC::Connection \
  AnyEvent::IRC::Client \
  AnyEvent::IRC::Util \
  Browser::Open \
  DBD::SQLite
  Facebook \
  Hash::Flatten \
  Net::Twitter \
  Statistics::R \
  WWW::Mechanize \
  Data::Dumper \
  Email::Send::Gmail \
  Email::Send \
  Email::Sender::Simple \
  Email::Simple::Creator \
  Email::Simple \
  HTTP::Client::Parallel \
  Net::Google::Spreadsheets \
  WebService::Bitly \
  Google::Voice
do
  echo "install $i" | cpan 2>&1 | tee $i.log
done
