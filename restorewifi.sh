#!/bin/bash

sudo systemctl start NetworkManager
sudo systemctl start wpa_supplicant
sudo pkill dhcpcd
sudo ifconfig `cat wlan` down
sudo ifconfig `cat wlan` up
sudo iwconfig `cat wlan` mode managed
sudo pkill dhcpcd
clear
echo
echo
echo Wifi restaurada \:\)
echo
