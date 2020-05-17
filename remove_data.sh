#!/usr/bin/env bash

echo "deleting all kubernetes jobs"
ssh 192.168.0.25 kubectl delete all --all --force --grace-period=0 --all-namespaces

echo "clearing output on all servers"

for i in 192.168.0.26 192.168.0.19 192.168.0.15 192.168.0.31; do
  ssh $i sudo rm -rf /data/output;
done

echo done
