#! /bin/bash -v

source ~/.bashrc

for i in \
  Sys::Statistics::Linux \
  AnyEvent::Twitter::Stream \
  Browser::Open \
  Hash::Flatten \
  Net::Twitter \
  WWW::Mechanize
do
  echo "install $i" | cpan 2>&1 | tee $i.log
done
