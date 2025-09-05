#!/bin/bash

source /opt/st/myir-yf13x/4.0.4-snapshot/environment-setup-cortexa7t2hf-neon-vfpv4-ostl-linux-gnueabi

./configure \
  --host=arm-ostl-linux-gnueabi \
  --prefix=$(realpath ./build) \
  --with-sysroot=$SDKTARGETSYSROOT \
  --enable-shared \
  --disable-static \
  CFLAGS="-g -O0"

make -j$(nproc)
make install

