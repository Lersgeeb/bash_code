#!/bin/bash

#echo "hola, cual es tu nombre"
#read nombre

#pedir usuario en un linea
read -p 'usuario: ' user

#pedir usuario dato sin que se vea en la consola
read -sp 'contrasena: ' password


echo "gusto en saludarte: "${user}

echo "Ingrese tus notas"
read nota1 nota2 nota3

echo "tu primera nota es: "${nota1}
echo "tu segunda nota es: "${nota2}
echo "tu tercera nota es: "${nota3}

exit 0
