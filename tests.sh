#!/bin/bash

function ping_haproxy () {
	for (( i=5;i>0; i-- ))
	do
		curl -H "HOST: www.web${num}.example" 172.100.0.200
		echo -ne "\n"
		#i = $i -1
	done
}

counter=0
input="a"
#$i = 5

echo -ne "\n \
----   Lista  ----\n \
1. Probar backup \n \
2. Probar balanceado web1.example\n \
3. Probar balanceado web2.example\n \
4. Peticións ao balanceador \n"

read -s -r -n 1 opcion
#echo $test

case $opcion in
	1)
		docker stop server1 server2 server3 server4
		echo "Esperando..."
		num=1
		ping_haproxy
		;;
	2)
		num=1
		ping_haproxy
		;;
	3)
		num=2
		ping_haproxy
		;;
	4)
		echo "Solicitando as peticións ao balanceador..."
		while :
		do
			read -s -r -t 0.1 -N 1 input
			if [[ "$input"  == "q" ]]
			then
				echo "Numero de peticións: $counter"
				exit
			else
				curl -s -S -o /dev/null -H "HOST: www.web1.example" 172.100.0.200
				counter=$((counter+1))
			fi
        	done
		;;
	*)
		echo "Erro: Opción non válida"
		;;
esac
