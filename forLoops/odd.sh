#!/bin/bash
#This program prints every odd number from 1001 to 1

for (( i=1001; i>0; i-- ))
do
	(( remainder=$i % 2 ))
	if [ $remainder != 0 ]; then
		echo $i
	fi
done
