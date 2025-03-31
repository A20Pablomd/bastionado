#!/bin/bash

function ping_haproxy () {
	for (( i=5;i>0; i-- ))
	do
		curl 172.100.0.200 
		echo -ne "\n"
		#i = $i -1
	done
}


#$i = 5

echo -ne "\n \
----   Lista  ----\n \
1. Probar backup \n \
2. Probar balanceado \n "

read test
#echo $test

if (( $test==1 ))
then
	docker stop server1 server2 server3
	echo "Esperando..."
	sleep 5
	ping_haproxy

elif (( $test==2 ))
then
	ping_haproxy
else
	echo "Erro"
fi
