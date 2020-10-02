#!/bin/sh
ifconfig wlan0 down
sleep 2
iwconfig wlan0 mode monitor
sleep 2
ifconfig wlan0 up
sleep 2
airmon-ng start wlan0
sleep 2
echo "monitor mode is on, configuring hostapd for access point........"
nmcli radio wifi off
echo "Radio off"
sleep 2
echo "Unblocking Wlan"
rfkill unblock wlan
sleep 2
echo "Setting Ip address to interface"
ifconfig wlan0 192.168.1.1/24 up
sleep 2
hostapd hostapd.conf
