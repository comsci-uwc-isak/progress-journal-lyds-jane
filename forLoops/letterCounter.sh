#!/bin/bash
#This program counts the number of words with less than 4 letters

counter=0
words=0
FILE="./senseless.txt"
while IFS= read -r line
do
	for word in $line
	do
		(( words=$words+1 ))
		(( number=${#word} ))
		if [ $number == 4 ]; then
			(( counter++ ))
		fi
	done
done < $FILE

(( percent=$number/$words ))
echo "There are $counter words with 4 letters. That is $percent percent of text."
