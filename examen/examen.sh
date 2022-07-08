#!/bin/bash

OUTPUT="respuestas.csv"
nums=( $(shuf -i 1-10 -n 5) )
contador=1

#Obtener listas de preguntas
while IFS= read -r linea
do
	if [[   " ${nums[*]} " =~ " ${contador} "  ]]
	then
		preguntas[${#preguntas[@]}]=${linea}
	fi
	contador=`expr $contador + 1`
 
done < ./preguntas.txt

#Realizar las preguntas y obtener respuestas
read -p 'Nombre del Estudiante: ' nombre
echo "Nombre del estudiante,"${nombre} > ${OUTPUT}
for pregunta in "${preguntas[@]}"
do
	echo $pregunta
	read -p 'respuesta: ' respuesta
	echo ${pregunta}","${respuesta} >> ${OUTPUT}
done

#Información de red
<<'Comment'
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc pfifo_fast state UP group default qlen 1000
    link/ether 08:00:27:fa:49:88 brd ff:ff:ff:ff:ff:ff
    inet 192.168.1.19/24 brd 192.168.1.255 scope global noprefixroute dynamic enp0s3
       valid_lft 81312sec preferred_lft 81312sec
    inet6 2803:4600:1113:2f2::4/128 scope global noprefixroute dynamic
       valid_lft 426924sec preferred_lft 426924sec
    inet6 2803:4600:1113:2f2:5956:ca1d:2b00:8e4c/64 scope global noprefixroute dynamic
       valid_lft 431992sec preferred_lft 431992sec
    inet6 fe80::7b31:9109:324b:b4e8/64 scope link noprefixroute
       valid_lft forever preferred_lft forever

Comment


exit 0
