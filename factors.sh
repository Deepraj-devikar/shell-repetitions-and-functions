#!/bin/bash

echo -n "Enter number: "
read num

factArr=()

declare -i num=$num
function getLCF () {
	local result=$1
	for (( i=2; i*i<=$1; i++ ))
	do
		if [ $(($1%$i)) -eq 0 ]
		then
			result=$i
			break
		fi
	done
	echo $result
}

function factors () {
	oup=$(getLCF $1)
	lenFactArr=${#factArr[@]}
	factArr[$lenFactArr]=$oup
	if [ $1 -ne $oup ]
	then
		factors $(($1/$oup))
	fi
}

if [ $num -gt 0 ]
then
	factors $num
	echo "factors of $num are ${factArr[@]}"
else
	echo "Please enter correct number"
fi
