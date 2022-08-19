#!/bin/bash

echo "check number is palindrom or not:"

function isPalindrom () {
	n=$1
	numLength=$(expr length $n)
	if [ $numLength -le 1 ]
	then
		echo 1
	else
		numLength2=$(($numLength-1))
		firstChar="${n:0:1}"
		lastChar="${n:$numLength2:$numLength}"
		if [ $firstChar -eq $lastChar ] # 12
		then
			numLength3=$(($numLength2-1))
			echo "$(isPalindrom ${n:1:$numLength3})"
		else
			echo 0
		fi
	fi
}

YES_PALINDROM=1

for (( i=1; i<=2; i++ ))
do
	echo -n "enter number 1 : "
	read num

	declare -i num=$num

	if [ $(isPalindrom $num) -eq $YES_PALINDROM ] # 32
	then
		echo "$num is palindrom"
	else
		echo "$num is not palindrom"
	fi
done
