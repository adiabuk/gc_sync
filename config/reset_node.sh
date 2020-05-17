#!/usr/bin/env bash

#
# Reset a k8s node for re-adding to cluster
#

yes|kubeadm reset
systemctl stop kubelet
systemctl stop docker
umount -a
rm -rf /var/lib/cni/
rm -rf /var/lib/kubelet/*
rm -rf /etc/cni/
ifconfig cni0 down
ifconfig flannel.1 down
ifconfig docker0 down
reboot
