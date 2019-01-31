#!/usr/bin/env bash

INTERVAL=0s
QUERY_PREFIX=http://ip.cn/
# QUERY_PREFIX=http://freeapi.ipip.net/
# QUERY_PREFIX=http://ip-api.com/#
# QUERY_PREFIX=http://api.ipinfodb.com/v3/ip-city/?key=YOUR_API_KEY&ip=

while [ $# -gt 0 ]; do
    INFO=$(curl -s "${QUERY_PREFIX}/$1")
    # echo "$1: $INFO"
    echo "$INFO"
    shift
    sleep ${INTERVAL}
done
