#!/usr/bin/env bash

kubeadm init --control-plane-endpoint=k8s.ci.local --pod-network-cidr=172.25.0.0/16 --apiserver-advertise-address=192.168.160.221

