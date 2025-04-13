#!/bin/bash

function ping_haproxy () {
	for (( i=5;i>0; i-- ))
	do
		curl -H "HOST: www.web${opcion}.example" 172.100.0.200
		echo -ne "\n"
		#i = $i -1
	done
}

counter=0
input="a"
#$i = 5

echo -ne "\n \
----   Lista  ----\n \
1. Probar balanceado web1.example\n \
2. Probar balanceado web2.example\n \
3. Probar backup \n \
4. Probar https \n \
5. Peticións ao balanceador \n \
6. Too many requests \n"
echo ""
read opcion
echo ""

case $opcion in

	1)
		ping_haproxy
		;;
	2)
		ping_haproxy
		;;

	3)
		docker stop server1 server2 server3 server4
		echo "Esperando..."
		ping_haproxy
		;;
	4)
		curl -k https://172.100.0.200
		;;
	5)
		echo "Solicitando as peticións ao balanceador..."
		while :
		do
			read -s -r -t 0.1 -N 1 input
			if [[ "$input"  == "q" ]]
			then
				echo "Numero de peticións: $counter"
				exit
			else
				curl -s -o /dev/null 172.100.0.200
				counter=$((counter+1))
			fi
        	done
		;;
	6)
		for i in {1..12}; do
			echo "Petición numero $i"
			curl 172.100.0.200
			echo ""
		done
		;;
	*)
		echo "Erro: Opción non válida"
		;;
esac
