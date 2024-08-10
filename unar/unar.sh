#!/bin/sh
git clone https://github.com/MacPaw/XADMaster.git

git clone https://github.com/MacPaw/universal-detector.git UniversalDetector

for p in patches/patch-*;do patch < "$p";done 

cd XADMaster

gmake -f Makefile.freebsd

doas cp -v unar lsar /usr/local/bin/
