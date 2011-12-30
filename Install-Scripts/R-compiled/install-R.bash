#! /bin/bash -v

# make local source tree
export SOURCE=/usr/local/src
rm -fr ${SOURCE}; mkdir -p ${SOURCE}
pushd ${SOURCE}
export WHERE=ftp://ftp.stat.math.ethz.ch/Software/R
export WHAT=R-patched.tar.bz2
rm -fr ${WHAT}
wget ${WHERE}/${WHAT}

# during the release cycle the directory name can change!!
export DIR=`tar tf ${WHAT} | head -n 1 | sed 's:/::'`

# extract the archive
rm -fr ${DIR}
tar xf ${WHAT}
rm -fr ${WHAT}
popd

# make local build / install tree
export BUILD=/usr/local/R-compiled
rm -fr ${BUILD}; mkdir -p ${BUILD}
pushd ${BUILD}

# environment variables
export R_PAPERSIZE='letter'
export R_BROWSER='/usr/bin/firefox'
export R_PDFVIEWER='/usr/bin/evince'

# configure
${SOURCE}/${DIR}/configure \
  --enable-R-shlib \
  --enable-BLAS-shlib \
  2>&1 | tee /R-configure.log

# compile
make 2>&1 | tee /R-make.log
make check 2>&1 | tee /R-check.log
make install | tee /R-install.log
popd

rm -fr ${SOURCE}
rm -fr ${BUILD}
/sbin/ldconfig
/sbin/SuSEconfig
