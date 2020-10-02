#!/bin/sh
airmon-ng stop wlan0
sleep 2
ifconfig wlan0 down
sleep 2
iwconfig wlan0 mode managed
sleep 2
ifconfig wlan0 up
sleep 2
echo "monitor mode is off, Enable wifi for internet"
