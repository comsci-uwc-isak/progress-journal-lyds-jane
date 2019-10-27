#!/bin/bash
#This program counts the days until fall break

currentDate=( `date +%s` )
fallBreak=1571583601

(( secondsBetween=$fallBreak - $currentDate ))

(( difference=$secondsBetween / 86400 ))

echo "There are " $difference " days until fall break"
#https://linuxconfig.org/how-to-count-days-since-a-specific-date-until-today-using-bash-shell