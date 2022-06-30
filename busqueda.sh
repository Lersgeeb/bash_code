#!/bin/bash

find . -size +2M | while read line; do 
	name=`basename ${line}`
	size=`wc -c ${line} | awk '{print $1}'`
	let size_in_mega=$size/1000000
	dir=`dirname ${line}`
	
	echo ${name} " " ${size_in_mega}"MB" ${dir} >> busqueda.csv 
done

exit 0
