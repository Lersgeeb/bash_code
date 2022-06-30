#!/bin/bash

print_test(){
	echo "Esta es una funcion de pruea"
}

print_test2() {
	echo "hola "$1
}

print_test3() {
	echo "hola "$1
	return 1
}


print_test

echo "hola"

print_test2 "Juan"

print_test3 "Gabriel"

# $? captura el valor de la ultima funcion del programa
echo "la funcion retorna "$?

locales(){
	local var1='local 1'
	echo "valores de las variables: " ${var1} " " ${var2}
	var1="cambio de 1 a 2"
	var2="cambio de 2 a 3"
}

var1='global 1'
var2='global 2'

echo ${var1} " " ${var2}

locales

echo ${var1} " " ${var2}

exit 0
