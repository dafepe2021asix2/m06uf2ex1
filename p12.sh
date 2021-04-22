#!/bin/bash

if [[ "$(id -u)" != "0" ]]
then
	echo "Executa aquet script como root"
	exit 1
fi

clear

echo "Introdueix la IP d'un equip informatic: "
read ipdirection

if echo $ipdirection | grep -oExq "^([0-9]{1,3}\.){3}[0-9]{1,3}"
then
	nmap $ipdirection | grep "open"
else
	exit 10
	
fi 


