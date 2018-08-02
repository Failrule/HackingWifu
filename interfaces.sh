#!/bin/bash
sh reset.sh
sh restorewifi.sh
clear
echo
ifconfig
echo

read -p "Disp. Wifi: " wlan
clear
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
clear
echo
ifconfig
read -p "Disp. Mon: " mon
rm wlan mon
clear
echo
echo Ficheros creados con exito
echo
echo $wlan > wlan
echo $mon > mon
echo
cat mon wlan
echo


