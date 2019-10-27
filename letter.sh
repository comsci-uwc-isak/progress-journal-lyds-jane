#!/bin/bash

chr() {
  [ "$1" -lt 256 ] || return 1
  printf "\\$(printf '%03o' "$1")"
}

ord() {
  LC_CTYPE=C printf '%d' "'$1"
}


echo "Please enter text"
read text
echo $text > counting.txt

for (( i=97; i<122; i++ ))
do
	letter=chr(i)
	grep -c "$letter" counting.txt
done

for (( e=97; e<122; e++ ))
do
	echo chr(e) "=" var$e
done

rm counting.txt