#!/bin/bash
#This program prints a random letter from the alphabet

chr() {
  [ "$1" -lt 256 ] || return 1
  printf "\\$(printf '%03o' "$1")"
}

ord() {
  LC_CTYPE=C printf '%d' "'$1"
}

for (( i=0; i<100; i++ ))
do
	FLOOR=96
	CEILING=123
	(( RANGE=$CEILING-$FLOOR+1 ))
	RESULT=$RANDOM
	(( RESULT %= $RANGE ))
	RESULT=$(($RESULT+$FLOOR))
	number=chr $RESULT
	echo $number
done
