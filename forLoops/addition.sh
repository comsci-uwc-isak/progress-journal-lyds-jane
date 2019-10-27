#!/bin/bash
#This program creates a value for the sum of the even and the odd numbers between 1 and 1000

even=0
odd=0
for (( i=1; i<1001; i++ ))
do
	(( remainder= $i % 2 ))
	if [ $remainder == 0 ]; then
		(( even=$even + $i ))
	elif [ $remainder != 0 ]; then
		(( odd=$odd + $i ))
	fi
done

echo "The sum of the odd numbers from 1 to 1000 is $odd"
echo "The sum of the even numbers from 1 to 1000 is $even"
