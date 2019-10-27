#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Error. Please enter:"
    echo "License Distance"
fi

# Check if file exists

test $1.txt
if [ ! -f "$1.txt" ]; then
    echo "Car does not exist"
    exit
fi

echo $2 >> $1.txt
bash dumbFrame.sh Trip recorded successfully