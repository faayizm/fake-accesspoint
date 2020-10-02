#!/bin/sh
ifconfig wlan0mon up 192.168.1.1 netmask 255.255.255.0.1
route add -net 192.168.1.0 netmask 255.255.255.0 gw 192.168.1.1
dnsmasq -C dnsmasq.conf -d
echo "Fake Wifi started without internet"
