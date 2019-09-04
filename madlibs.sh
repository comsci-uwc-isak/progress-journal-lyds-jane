#This program will create a madlibs

echo "Enter YOUR NAME. Click ENTER:"
read name

echo "Enter YOUR AGE. Click ENTER:"
read age     

echo "Enter YOUR FAVOURITE ANIMAL. Click ENTER:"
read animal     

echo -n "Once upon a time there was a person named "
echo $name

echo -n "They were " $age " years old"

echo -n "They liked"
echo animal
