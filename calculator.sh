#!/bin/bash

#This program completes the mathematic operation desired by the user.

#These set the base number for each operation

#This performs the mathematics. $1 is the variale for the first argument.

if [ $1 == add ]; then
	for arg
	do
		(( sum=$sum+arg ))
	done
	echo "The sum of the arguments is" $sum
elif [ $1 == divide ]; then
	quotient=1
	for arg
	do
		(( quotient=arg/$quotient ))
	done	
	echo "The quotient of the arguments is" $quotient
elif [ $1 == subtract ]; then
	for arg
	do
		(( difference=arg-$difference ))
	done
	echo "The difference of the arguments is" $difference
elif [ $1 == multiply ]; then
	product=1
	for arg
	do
		(( product=$product*arg ))
	done	
	echo "The product of the arguments is" $product
else
	echo "Error. Please enter 'add', 'divide', 'multiply', or 'subtract', followed by the numbers you would like to compute."
fi
