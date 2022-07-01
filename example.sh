#!/bin/bash

awk 'BEGIN {i=1; while (i<6) {print i; ++i}}'

awk 'BEGIN {
	sum=0;
	for(i=0;i<20;++i){
		sum+=i;
		if(sum>50)
			break;
		else
			print "Suma=",sum

	}
}'

awk 'BEGIN{
	for(i=0;i<=20;++i){
		if (i%2==0)
			print i;
		else
			continue
	}
}'

exit 0
