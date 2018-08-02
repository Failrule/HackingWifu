#!/bin/bash

for mon in {0..3}
do
	sudo airmon-ng stop mon$mon
done

sudo airmon-ng stop `cat mon`
sudo airmon-ng stop `cat wlan`
sudo ifconfig `cat wlan` down
sudo ifconfig `cat mon` down
clear
echo
echo Listo.
exit
