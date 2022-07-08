#!/bin/bash

HOST='192.168.1.19'
DATABASE='curso_bash'
user='usuario'
passwd='Password1!'
query='query.sql'

test_history='test_history.txt'
echo "" > ${test_history}
echo "SELECT * FROM historial;" > ${query}

while IFS= read -r linea
do
	echo " INSERT INTO historial(texto) values('"$linea"'); " >> ${query};
done < $HOME/.bash_history

result=$( mysql -u ${user} --password=${passwd} -h ${HOST} -D ${DATABASE} < ${query})
echo ${result}


exit  0
