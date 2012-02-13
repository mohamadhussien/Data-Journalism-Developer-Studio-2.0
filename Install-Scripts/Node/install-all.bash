#! /bin/bash -v

for i in node packages
do
  sudo ./install-${i}.bash 2>&1 | tee ${i}.log
done

pushd ~
sudo tar cf - \
  /usr/local/lib/node \
  /usr/local/lib/node_modules \
  /usr/local/include/node \
  /usr/local/share/man/man1/node.1 \
  /usr/local/bin/node \
  /usr/local/bin/node-waf \
  /usr/local/bin/cake \
  /usr/local/bin/coffee \
  /usr/local/bin/npm \
  | bzip2 -9c > node.tar.bz2
popd
