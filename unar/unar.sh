#!/bin/sh
git clone https://github.com/MacPaw/XADMaster.git

git clone https://github.com/MacPaw/universal-detector.git UniversalDetector

cd XADMaster/


gmake -f Makefile.freebsd
