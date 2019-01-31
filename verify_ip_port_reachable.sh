#!/usr/bin/env bash

# echo 80 260 24061 25061 26061 | tr ' ' '\n' | xargs -l1 nc -zv 45.124.254.53

set -e

if [ $# -le 2 ]; then
    echo "usage: $0 <ip> <ports>"
    exit 1
fi

ip=$1
shift
ports=$@

for port in $ports; do
    nc -zv $ip $port
    # echo $ip $port
done
