#!/bin/bash

# connect to eth1
sudo ip link set eth1 up
sudo dhcpcd
sudo ntpd -qg
echo "USB Ethernet On!"
