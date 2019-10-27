#!/bin/bash
#This program prints out the first 100 factors of the number 7

for (( i=1; i<101; i++ ))
do
	(( factor=7 * $i ))
	echo $factor
done
