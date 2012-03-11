#! /bin/bash -v

# run the export from the command line
lyx -e xhtml Data*lyx

# make folder with exported xhtml
rm -fr xhtml; mkdir -p xhtml
mv *.xhtml xhtml/
mv [0-9]*png xhtml/

# ImageMagick FTW!
pushd xhtml
for i in *.png
do
  cp $i zztemp.png
  convert zztemp.png -resize 500x600 $i
done
popd

pushd xhtml
sigil Data*xhtml
popd
calibre Data*epub
git add Published

# stash stuff here in Git
git add *.lyx
git commit
git push

# cleanup
rm \#*
rm Data*epub
rm -fr xhtml
rm *.lyx~
git status
