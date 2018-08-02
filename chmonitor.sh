#!/bin/bash
sh reset.sh
sh restorewifi.sh
#sudo airmon-ng stop `cat wlan`
#sudo ifconfig `cat wlan` down
#sudo ifconfig `cat wlan` up
#sudo pkill NetworkManager
#sudo pkill dhcpcd
#sudo pkill wpa_supplicant
#sudo airmon-ng start `cat wlan` 11
sudo airmon-ng start `cat wlan`
#sudo pkill NetworkManager
#sudo pkill dhcpcd
#sudo pkill wpa_supplicant

read -p "Que tipo de encriptacion?: " enc
read -p "Que canal?: " ch
sudo airodump-ng -a -c $ch -t $enc `cat mon` 

