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
        flavourprice=600
	flavourname=Salt
fi
if [ $flavour=2 ]; then
        flavourprice=800
	flavourname=Picanto-Beef
fi
if [ $flavour=3 ]; then
        flavourprice=800
	flavourname=Chili-Tomato
fi
if [ $flavour=4 ]; then
        flavourprice=1000
	flavourname=Vegetable
fi
if [ $flavour=5 ]; then
        flavourprice=1200
	flavourname=Tantanmen
fi
echo -n "You have selected $flavourname ."
echo "Price: $flavourprice yen."
