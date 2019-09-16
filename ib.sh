x#!/bin/bash

echo "Welcome to the IB."
echo "It's time to choose your courses for the next two years. Would you like..."
echo "Option A- HL Biology, HL Chemistry, HL Math AA, SL Physics, SL English Language and Literature, SL Spanish B"
echo "Option B- HL Film, HL Global Politics, HL English Language and Literature, SL ESS, SL Spanish ab initio, SL Math IA"
echo "Type A or B then hit ENTER"
read class
if [ $class = A ]; then
	echo "Do you join the school play? Y/N"
	gameshow=rehearsal
	read commitment
else
	if [ $class = B ]; then
		echo "Do you sign up for a competitive sports team? Y/N"
		gameshow=game
		read commitment
	fi
fi
if [ $commitment = Y ]; then
	echo "You're almost done year 1! Your Math IA draft is due next week, and you're only in. But you have a big $gameshow this weekend! Do you go, or do you stay home and work?"
	echo "Please type 'Go' or 'Stay', then hit ENTER"
	read study
else
	if [ $commitment = N ]; then
		echo -n "You're almost done year 1! Your Math IA draft is due next week, and you're only in. But your friends are all going downtown this weekend for a 17th birthday party."
		echo "Do you go, or do you stay home and work?"
		echo "Please type 'Go' or 'Stay', then hit ENTER"   
        	read study
	fi
fi
if [ $study = Stay ]; then
	echo -n "You stayed home, and you're glad you did! You confidently submitted your IA on-time."
	echo -n " It's now the end of second year, and you have your first sciene exam tomorrow. Yikes!"
	echo " You've been studying for a couple hours, but you still aren't 100% confident. It's 11pm, do you keep studying or go to bed?"
	echo "Please type 'Study' or 'Sleep', then hit ENTER"
	read sleep
else
	if [ $study = Go ]; then
		echo -n "You went donwtown and you're having a blast! It's 1am and you and your friends are making your way home when you see you least favourite teacher's car parked on the side of the road."
		echo "Do you egg the car, or go home?"
		echo "Please type 'Egg' or 'Home', then hit ENTER"
		read egg
	fi
fi
if [ $sleep = Study ]; then
	echo "You fell asleep on top of your textbook around 3am, and didn't wake up until noon! Oh no, you missed your exam and failed IB. Sorry \_o_/"
	exit
else
	if [ $sleep = Sleep ]; then
		echo -n "You wake up feeling refreshed and ready for your exam. After a long hour of writing, you're done! Do you hand in your paper so you can study for the next one, or re-read the whole"
		echo " test just in case?"
		echo "Please type 'Submit' or 'Re-read' then it ENTER"
		read end
	fi
fi
if [ $egg = Egg ]; then
	echo "Oh no! You got detention. Do you spend the 2 hours studying or crying?"
	echo "Please type 'Study' or 'Cry' and hit ENTER"
	read detention
else
	if [ $egg = Home ]; then
		echo "Congrats! You get a 35 in the IB!"
		exit
	fi
fi
if [ $end = Submit ]; then
	echo "Congrats! You get a 38 in the IB!"
	exit
else
	if [ $end = Re-read ]; then
		echo "Congrats! You get a 42 in IB, the highest mark out of all your friends!"
		exit
	fi
fi
if [ $detention = Study ]; then
	echo "You got a 32 in the IB. Nice!"
	exit
else
	if [ $detention = Cry ]; then
		echo "You got a 27. Not bad!"
		exit
	fi
fi
