#!/bin/bash

#This program simulates an ice cream shop
#The user selects different flavours and toppings

echo "Welcome to the ice cream factory"
echo "==========Menu==========="
echo "1. Cone - 50Yen"
echo "2. Vanilla icecream 100Yen"
echo "3. Chocolate icecream 120Yen"
echo "4. M&M Topping 20Yen"
echo "Select an item and press ENTER. To exit press x."

#read the options. Validate that it is only 1 to 4 or "x"
read item

#check if item is number 1-4 or "x"
if [[ $item -ge 1 && $item -le 4 ]]; then
	echo "Option selected is available"
elif [ $item == x ]; then
	echo "Bye Bye"
else
	echo "Option not valid"
fi
