#!/bin/bash

/bin/ping -q -c3 8.8.8.8 > /dev/null
if [ $? -ne 0 ]; then
	killall wpa_supplicant
	/bin/ip link set wlan0 up
	/sbin/wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf > /dev/null 2>&1
	/sbin/dhclient -r
	/sbin/dhclient > /dev/null 2>&1
fi

