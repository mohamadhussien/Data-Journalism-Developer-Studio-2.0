#! /bin/bash -v
git status
pushd Documents
./cleanup.bash
popd
pushd Install-Scripts
./cleanup.bash
popd
rm -fr Install-Scripts.tar.bz2
rm -fr Install-Scripts/GoogleRefine/google-refine-2.1
git status
