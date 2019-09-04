#this program tests if a number is between 1 and 5

echo "Enter number. Click ENTER:"
read number

if [[( 0 -le $number && 5 -ge $number )]]; then
	echo "number is valid"
else
	echo "number is not valid"
fi
