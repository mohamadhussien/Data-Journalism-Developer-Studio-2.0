#! /bin/bash -v

source ~/.bashrc

for i in \
  Sys::Statistics::Linux \
  YAML::XS \
  Hash::Flatten
do
  echo "install $i" | cpan 2>&1 | tee $i.log
done
