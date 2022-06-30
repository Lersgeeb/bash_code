#!/bin/bash

for i in {1..10}
do
	num=$RANDOM
	temp=let $num % 2
	echo ${num}
	if [ ${temp} -eq 0 ]
	then
		echo ${num}" es par"
	else
		echo ${num}" es impar"
	fi
done

