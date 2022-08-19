#!/bin/bash

echo -n "Enter number: "
read num

declare -i num=$num

function factorial () {
	if [ $1 -eq 1 ]
	then
		echo "1"
	else
		parentN=$(($1-1))
		parentFactorial=$(factorial $parentN)
		local result=$(($parentFactorial*$1))
		echo $result
	fi
}

if [ $num -gt 0 ]
then
	echo "$num factorial is $(factorial $num)"
else
	echo "Please enter correct number"
fi
