#!/usr/bin/env bash
#
# Install protobuf by google
#

apt install autoconf
apt install automake
apt install libtool
apt install unzip

git clone https://github.com/protocolbuffers/protobuf.git
cd protobuf
git checkout v3.17.3
./autogen.sh
./configure
make
make check
make install
ldconfig # refresh shared library cache.

