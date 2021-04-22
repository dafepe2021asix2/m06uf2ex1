#!/bin/bash

if [[ "$(id -u)" != "0" ]]
then
	echo "Executa aquet script como root"
	exit 1
fi

clear

echo "Introdueix un nombre abreviat de mes: "
read mes

echo "Introduexi un numero de dia: "
read dia

filtrado="\"^${mes}**${dia}\""

grep $filtrado /var/log/user.log >> p07.log
numlineas=$(wc -l < p07.log)

exit $numlineas
