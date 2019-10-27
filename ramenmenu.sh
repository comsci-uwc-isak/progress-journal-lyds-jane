#!/bin/bash
## This program allows customers to choose from a ramen menu ##

echo "Flavours"
echo "1 - Salt (600 yen)"
echo "2 - Picanto Beef (800 yen)"
echo "3 - Chili Tomato (800 yen"
echo "4 - Vegetable (1 000 yen)"
echo "5 - Tantanmen (1 200 yen)"

echo "Type the number of the flavour you would like:"
read flavour

if [ $flavour=1 ]; then
	let flavourprice=600
fi
if [ $flavour=2 ]; then
        let flavourprice=800
fi
if [ $flavour=3 ]; then
        let flavourprice=800
fi
if [ $flavour=4 ]; then
        let flavourprice=1,000
fi
if [ $flavour=5 ]; then
        let flavourprice=1,200
fi
Echo "Current price: " $flavourprice "yen. Would you like a drink? Y/N"
read yn
if [ $yn=y ]; then
	echo "Select your drink number:"
	echo "1 - Water (Free)"
	echo "2 - Sake (200 yen)"
	echo "3 - Juice (200 yen)"
	read drink
	if [ $drink=1 ]; then
		let drinkprice=0
	fi
	if [ $drink=2 ]; then 
		let drinkprice=200
	fi
	if [ $drink=3 ]; then
		let drinkprice=200 
	fi
if [ $yn=n ]; then
        let drinkprice=0
fi
let total = expr $flavourprice+$drinkprice 
let finalprice = expr $total*1.8

echo "Total + GST =" $finalprice
