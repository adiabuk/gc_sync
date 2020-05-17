#!/usr/bin/env bash

for i in 192.168.0.26 192.168.0.19 192.168.0.15 192.168.0.31; do

  ssh $i "cd /data/altcoin_historical && sudo git pull"
done

echo done
