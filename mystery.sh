#!/bin/bash

(( x=(random%100)+1 ))
playing=true
try=0
while [ $playing ]
do
	echo "Enter a number"
	read num
	(( try++ ))
	if [ $num -gt $x ]; then
		echo "too big"
	elif [ $num -eq $x ]; then
		echo "you won with" $try "trials"
		break
	else
		echo "too small"
	fi
done
echo "Game Over"
