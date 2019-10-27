#!/bin/bash
grep "$1" mainCarFile.txt
echo "=================="
echo "Trip log:"
cat $1.txt
echo "Total distance:"
echo "Average distance:"
