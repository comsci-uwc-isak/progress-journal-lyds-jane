#This program will calculate the area of a rectangle
#The user provides the dimensions

Echo "Enter the width of the rectangle. Press ENTER:"
read width

Echo "Enter the length of the rectangle. Press ENTER:"
read length

(( area = $width*$length ))

echo -n "The area of the rectangle is: "
echo $area
