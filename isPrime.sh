#!/bin/bash

echo -n "Enter number: "
read num

declare -i num=$num

function isPrime () {
	local result
	if [ $1 -eq 1 ]
	then
		result="yes"
	else
		result="yes"
		for (( i=2; i<$1; i++ ))
		do
			if [ $(($1%$i)) -eq 0 ]
			then
				result="not"
				break
			fi
		done
	fi
	echo $result
}

if [ $num -gt 0 ]
then
	echo "$num is $(isPrime $num) prime number"
else
	echo "Please enter correct number"
fi
