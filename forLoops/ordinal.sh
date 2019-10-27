#!/bin/bash
#This program prints the numbers with their ordinal endings

for (( i=0; i<100; i++ ))
do
	if [[ $i%10 -eq 1 && $i -ne 11 ]]; then
		echo $i"st"
	elif [[ $i%10 -eq 2 && $i -ne 12 ]]; then
		echo $i"nd"
	elif [[ $i%10 -eq 3 && $i -ne 13 ]]; then
		echo $i"rd"
	else
		echo $i"th"
	fi
done
