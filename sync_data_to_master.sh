#!/usr/bin/env bash


for i in 192.168.0.26 192.168.0.19 192.168.0.15; do
  rsync -rvhauz --dry-run --exclude=*.log  $i:/data/output ~/data/output

done

