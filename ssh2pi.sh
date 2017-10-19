#!/usr/bin/env bash

pi_address="$(arp -n | grep -i b8:27:eb | awk '{print $1}')"

if [ -z ${pi_address} ]; then
    # if arp table doesn't contain info of Pi, then use nmap
    pi_address="$(sudo nmap -sP 192.168.1.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}')"
fi

ssh -l pi "${pi_address}"
