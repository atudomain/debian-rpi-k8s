#!/usr/bin/env bash
#
# Installs runc.
#


apt-get --yes install libseccomp-dev
apt-get --yes install pkg-config
git clone https://github.com/opencontainers/runc
cd runc
git checkout v1.0.0
make
make install

