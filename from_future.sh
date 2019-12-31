#!/bin/bash

NC='\033[0m'
BASE=1
if [ "$1" != "" ];then
	STR=$1
else
	STR="Renuncia"
fi

if [ "$2" != "" ];then
	TIME=$2
else
	TIME=0.5
fi



while true
do
	for i in $(seq 31 39);
	do
		sleep ${TIME}
		echo -e "\033[${BASE};${i}m${STR}${NC}"
	done
	BASE=$(((BASE+1)%2))
done
