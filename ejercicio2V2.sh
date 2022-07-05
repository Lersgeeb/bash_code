#!/bin/bash

es_entero(){
    regex="^[0-9]+$"
    if [[ $1 =~ $regex ]] && [[ $2 =~ $regex ]]
    then
            return 1

    else
            return 0
    fi
}

amigos(){
    awk -v data1="$1" -v data2="$2" 'BEGIN{
        suma1=0
        suma2=0;
        for(i=1;i<=(data1/2);++i){
            if(data1%i==0){
                suma1+=i
            }
        }
        for(i=1;i<=(data2/2);++i){
            if(data2%i==0){
                suma2+=i
            }
        }

        if (suma1 == data2 && suma2 == data1){
            print "son amigos"
        }
        else{
            print "no son amigos"
        }
    }'

}

read -p "Ingrese el primer numero: " num1
read -p "Ingrese el segundo numero: " num2
es_entero $num1 $num2
if [ $? -eq 1 ]
then
    amigos $num1 $num2
fi

exit 0

