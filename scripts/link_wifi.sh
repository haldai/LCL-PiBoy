#!/bin/bash

# connect to eth1
sudo ip link set wlan0 up
sudo wifi-menu
sudo ntpd -qg
echo "WiFi On!"
