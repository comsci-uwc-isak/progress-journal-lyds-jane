#!/bin/bash

#This program adds all the inputs 

product=1
for arg
do 
	(( product = $product * arg ))
done

echo $product

