#!/bin/bash
#This progam prints out 1000 numbers in the sequence 0123456012345601234560

n=-1
for (( i=0; i<1000; i++ ))
do
	(( n=$n+1 ))
	if [ $n -eq 7 ]; then
		n=0
	fi
	echo $n
done
