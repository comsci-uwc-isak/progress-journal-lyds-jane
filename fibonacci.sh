#!/bin/bash

#This program calculates n terms of the fibonacci sequence

echo "Welcome to the fibonacci sequence. Enter the number of values you woul like. Then click ENTER"
read response

#Sets the first two values
counter=1
first=0
second=1

#Prints the first value
echo $second

#Formula; the variables are changed to add the current number to the one before it
while [ $counter -lt $response ];
do
	(( number=$first+$second ))
	echo $number
	first=$second
	second=$number
	(( counter++ ))
done
