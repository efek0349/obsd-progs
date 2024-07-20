#!/bin/sh
ftp https://swupdate.openvpn.org/community/releases/openvpn-2.6.12.tar.gz

tar zxvf openvpn-2.6.12.tar.gz

cd openvpn-2.6.12

for p in ../patches/patch-*;do patch < "$p";done 

./configure  OPENSSL_LIBS="-L/usr/local/lib/eopenssl32 -Wl,-rpath,/usr/local/lib/eopenssl32 -lssl -lcrypto" \
                          OPENSSL_CFLAGS="-I/usr/local/include/eopenssl32/" --with-crypto-library=openssl \
                          CC="cc" CPPFLAGS="-I/usr/local/include" LDFLAGS="-L/usr/local/lib"

make

cp -v src/openvpn/openvpn /usr/local/bin/openvpn-openssl
