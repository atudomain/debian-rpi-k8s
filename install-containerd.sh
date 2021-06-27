#!/usr/bin/env bash
#
# Install containerd (requires protobuf)
#

git clone https://github.com/containerd/containerd
cd containerd/
git checkout v1.5.2
# !!! apt-get install --yes runc
export BUILDTAGS=no_btrfs
make
make install

mkdir -p /etc/containerd
containerd config default > /etc/containerd/config.toml

#/usr/local/bin/containerd

cp containerd.service /etc/systemd/system/
chmod 644 /etc/systemd/system/containerd.service

systemctl daemon-reload

