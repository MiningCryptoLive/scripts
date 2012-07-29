#!/bin/sh
cd ~/ics
repo sync -j16
.  build/envsetup.sh
lunch cm_ruby
make clobber
.  build/envsetup.sh
brunch ruby -j16 > build.txt
