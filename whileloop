#!/bin/bash

#This program demonstrates the use of loops.

counter=0

while [ $counter -le 9 ];
do
	(( counter++ ))
	if [ $counter -eq 3 ]; then	
		echo "skip"
		continue
	fi
	if [ $counter -eq 9 ]; then
		echo "bye bye"
		break
	fi
	echo $counter
done
echo "out of the program"
