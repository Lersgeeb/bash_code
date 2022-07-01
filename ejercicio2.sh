#!/bin/bash

awk 'BEGIN {
	print "Primer numero: ";
	getline num1;
	print "Segundo numero: ";
	getline num2;

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
		secondReq = 1

	if(firstReq==1 && secondReq==1){
		print("Son numeros amigos")
	}
	else
		print("No son numeros amigos")
	
}'

exit 0
