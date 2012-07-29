#!/bin/bash
echo going to directory
cd ~/ics
echo Syncing.....
repo sync -j16
echo Cleaning.....
.  build/envsetup.sh
lunch cm_ruby
make clobber
echo Building......
.  build/envsetup.sh
rm build.txt
brunch ruby -j16 > build.txt
