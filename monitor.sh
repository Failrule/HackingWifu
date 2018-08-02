#!/bin/bash
sudo airmon-ng stop `cat wlan`
sudo ifconfig `cat wlan` down
#sudo ifconfig `cat wlan` up
sudo pkill NetworkManager
sudo pkill dhcpcd
sudo pkill wpa_supplicant
sudo airmon-ng start `cat wlan` 11
sudo pkill NetworkManager
sudo pkill dhcpcd
sudo pkill wpa_supplicant
read -p "Que tipo de encriptacion?: " enc
sudo airodump-ng -t $enc `cat mon` 

