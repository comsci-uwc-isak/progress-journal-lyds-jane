#!/bin/bash

#This program simulates the Monty Hall problem

echo "There are three doors. Behind one is a prize. Choose a number between one and three and click ENTER."
read num
(( correct=(RANDOM%3)+1 ))

#Determines which numbers the user did NOT submit. Therefore, notNumOne means "The first of the two numbers they didn't select"
if [ $num -eq 1 ]; then
	notNumOne=2
	notNumTwo=3
elif [ $num -eq 2 ]; then
	notNumOne=1
	notNumTwo=3
elif [ $num -eq 3 ]; then
	notNumOne=1
	notNumTwo=2
fi

#If the user guesses the correct door, this randomly decides which of the incorrect doors to tell them is incorrect.
#goTo determines which number the user will switch to if they decide to switch
if [ $num -eq $correct ]; then
	(( r=(RANDOM%2)+1 ))
	if [ $r -eq 1 ]; then
		other=$notNumOne
		goTo=$notNumTwo
	elif [ $r -eq 2 ]; then
		other=$notNumTwo
		goTo=$notNumOne
	fi
	echo "You chose door " $num ". Door " $other " is not the correct door. Would you like to switch? Y/N"
	read switch
#If the user did not guess the correct door
elif [ $num -ne $correct ]; then
	if [ $correct -eq $notNumOne ]; then
		echo "You chose door " $num ". Door " $notNumTwo " is not the correct door. Would you like to switch? Y/N"
		read switch
		goTo=$notNumOne
	elif [ $correct -eq $notNumTwo ]; then
		echo "You chose door " $num ". Door " $notNumOne " is not the correct door. Would you like to switch? Y/N"
		read switch
		goTo=$notNumTwo
	fi
fi

#If the user decides to switch
if [ $switch == Y ]; then
	num=$goTo
fi

if [ $num -eq $correct ]; then
	echo "Congratulations! You guessed correct."
elif [ 	$num -ne $correct ]; then
	echo "Sorry, you guessed wrong. The correct door was " $correct
fi
