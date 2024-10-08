#!/bin/sh
git clone https://github.com/openboardview/openboardview.git

cd openboardview

cmake -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr -D CMAKE_CXX_FLAGS="-L/usr/X11R6/lib -I/usr/X11R6/include  -Wno-unused-command-line-argument -Wno-absolute-value -Wno-unused-variable"

make -C build

#copy
cp -v build/src/openboardview/openboardview  $HOME/bin

#run
./$HOME/bin/openboardview

#Opening FZ file in OpenboardView may show an error "FZ key null"

#File -> Program Preference

#paste the key 0x25d8d248 0xe1502405 0x56b5d486 0x69213fe0 0xa22490ec 0x01fdd9fa 0x0681955f 0x0fac202d 0xdac9eeb4 0xf6024aba 0xcd8b4cc6 0x9f307c8e 0x4ab8fad7 0x232f967d 0x5e8666a3 0xde966d4b 0xc64bfb1c 0xea7fb092 0x1a751a7e 0x37e8f0bc 0x3359c8f3 0x969ac22b 0x610f5804 0xd99d10e6 0xc58d54d6 0x1f9aea8b 0x8e388c1a 0xe4f7d2ed 0x3e5da1f6 0xedfe818a 0x7252b016 0xb503a170 0xc4128fb6 0x2c93ceeb 0x53539a6e 0xdacf7668 0x3ab78e52 0x8ee9d815 0x7043f799 0xc6a05dcf 0x727f1da2 0x0dfd983b 0x78c53872 0x00945692
