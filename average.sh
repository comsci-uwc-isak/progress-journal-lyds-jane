#!/bin/bash

echo "Welcome to the Running Average"

valid=true
sum=0
n=0
while $valid;
do
	echo "Enter a number or Exit (X): "
	read num
	if [ $num == X ]; then
		echo "exiting"
		break
	else
		(( sum=$num+$sum ))
		(( n++ ))
		(( ave=$sum/$n ))
		echo "Running average is: "$ave
	fi
done

