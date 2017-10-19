#!/usr/bin/env bash

# https://raspberrypi.stackexchange.com/questions/13936/find-raspberry-pi-address-on-local-network


# sudo nmap -sP 192.168.1.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}'

# or

pi_ip="$(arp -n | grep -i b8:27:eb | awk '{print $1}')"

if [ -z ${pi_ip} ]; then
    # if arp table doesn't contain info of Pi, then use nmap
    pi_ip="$(sudo nmap -sP 192.168.1.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}')"
fi

echo "${pi_ip}"
