#!/bin/bash

archivosalida="lista.csv"
#temp=$(find . -size +2M)
temp=$(find / -type f -size +4048M)
echo ${temp}

for archivo in $temp
do
	nombre=$(basename ${archivo})
	tamano=$(du -h ${archivo})
	dir=$(dirname ${archivo})

	echo ${nombre}","${tamano}","${dir} >> ${archivosalida}
done

exit 0
