#!/usr/bin/env bash
#
# Removes taint from k8s master.
#

kubectl taint nodes --all node-role.kubernetes.io/master-
