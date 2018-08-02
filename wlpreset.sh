#!/bin/bash

sudo airmon-ng stop wlp6s0mon


sudo airmon-ng stop `cat wlan`
sudo ifconfig `cat wlan` down
exit
