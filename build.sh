#!/usr/bin/env bash

sudo apt-get build-dep -y linux-hwe-6.5
sudo apt-get install -y dwarves

date > a.txt
dpkg-buildpackage 2>&1 | tee build.log
date > b.txt

