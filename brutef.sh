#!/bin/bash
read -p "Nombre del proyecto?: " archivo

ls bruteforce/

read -p "Nombre del diccionario?: " dicc

cd $archivo

sudo aircrack-ng -w ../bruteforce/$dicc -b `cat bssid` $archivo*.cap 
