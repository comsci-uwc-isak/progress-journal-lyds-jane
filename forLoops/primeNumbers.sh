#!/bin/bash
#This program prints the first 100 prime numbers

for (( i=0; i<100; i++ ))
do
	prime=1
	for (( n=2; n<$i; n++ ))
	do
		(( remainder=$i % $n ))
		if [ $remainder == 0 ]; then
			prime=0
			break
		fi
	done
	if [ $prime == 1 ]; then
		echo $i
	fi
done
