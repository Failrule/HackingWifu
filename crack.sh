#!/bin/bash
read -p "Nombre del proyecto?: " archivo
cd $archivo
echo
echo Corriendo algoritmo... 
echo

for i in {0..3}
  do
	echo ====================== >> PASS_$archivo
  done

sudo aircrack-ng -z -b `cat bssid` $archivo*.cap | grep KEY >> PASS_$archivo


for i in {0..3}
  do
	echo ====================== >> PASS_$archivo
  done

cat PASS_$archivo

cd ..
