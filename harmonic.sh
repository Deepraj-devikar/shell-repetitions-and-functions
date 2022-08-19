#!/bin/bash

declare -i num=$1

# for doing floating point division correctly
function division () {
	local result=`echo "$1/$2" | awk -F '/' '{print ($1/$2)}'`
	echo $result
}

# for doing floating point addition correctly
function addition () {
	local result=`echo "$1+$2" | awk -F '+' '{print ($1+$2)}'`
	echo $result
}

function harmonic () {
	if [ $1 -eq 1 ]
	then
		echo "1"
	else
		parentN=$(($1-1))
		parentHarmonic=$(harmonic $parentN)
		currentDiv=$(division 1 $1)
		local result=$(addition $parentHarmonic $currentDiv)
		echo $result
	fi
}

if [ $num -ne 0 ] 
then
	echo "$1th harmonic is $(harmonic $1)"
else
	echo "Please enter correct number."
fi
