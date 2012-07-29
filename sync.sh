#!/bin/bash
echo Syncing CM9
cd ~/ics
repo sync -j16
echo Syncing AOKP
cd ~/AOKP
repo sync -j16
echo Syncing CM10
cd ~/jb
repo sync -j16
