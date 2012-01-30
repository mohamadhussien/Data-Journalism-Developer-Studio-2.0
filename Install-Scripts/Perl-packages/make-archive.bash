#! /bin/bash -v

pushd ~
rm -fr .cpan/build .cpan/sources .cpan/Metadata
tar cf - \
  perl5 \
  .cpan \
  | bzip2 -9c > perl5.tar.bz2
popd
