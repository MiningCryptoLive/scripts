#!/bin/bash
echo going to directory
cd ~/ics
echo Syncing.....
repo sync -j16
echo Building......
.  build/envsetup.sh
rm build.txt
brunch ruby -j16 > build.txt
cp ~/ics/out/target/product/ruby/*.zip ~/Desktop
make clobber
