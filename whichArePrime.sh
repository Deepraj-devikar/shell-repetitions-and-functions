#!/bin/bash

echo -n "Enter start range number: "
read sNum

echo -n "Enter end range number: "
read eNum

declare -i sNum=$sNum
declare -i eNum=$eNum

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

if [ $sNum -gt 0 -a $eNum -gt 0 ]
then
	for (( i=$sNum; i<=$eNum; i++ ))
	do
		echo "$i is $(isPrime $i) prime number"
	done
else
	echo "Please enter correct numbers"
fi
