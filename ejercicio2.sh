#!/bin/bash

awk 'BEGIN {
        OFMT = "%.0f";
	num_non_valid = 1;
	while(num_non_valid){
		print "Primer número: ";
		getline num1;
		if(num1 ~ /^[0-9]+$/){
                	print("El número es válido") 
			
			break;
		}
		else	
			print("el número es inválido, intente de nuevo");
	}

	while(num_non_valid){
                print "Segundo número: ";
                getline num2;
                if(num2 ~ /^[0-9]+$/){
                        print("El número es válido")
                        break;
                }
                else
                        print("el número es inválido, intente de nuevo");
        }

	sumNum1 = 0;
        sumNum2 = 0;

	firstReq = 0;
	secondReq = 0;

	for (i=1;i<(num1/2)+1;++i){
	 	if(num1%i==0)
			sumNum1 += i; 
	}

	if(sumNum1==num2)
		firstReq = 1;

	for (i=1;i<(num2/2)+1;++i){
		if(num2%i==0)
			sumNum2 += i;
	}
	
	if(sumNum2==num1)
		secondReq = 1;

	if(firstReq==1 && secondReq==1){
		printf("\n ************ %s y %s Son números amigos ************ \n\n", num1, num2);
	}
	else
		printf("\n ************ %s y %s NO son números amigos ************ \n\n", num1, num2);
	
}'

exit 0
