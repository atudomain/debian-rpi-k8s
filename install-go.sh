#!/usr/bin/env bash
#
# Insalls go on debian 10 buster
#

wget https://golang.org/dl/go1.16.5.linux-arm64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.5.linux-arm64.tar.gz
echo "" >> /etc/profile
echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile
export PATH=$PATH:/usr/local/go/bin

