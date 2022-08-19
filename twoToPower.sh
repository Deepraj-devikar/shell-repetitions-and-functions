#!/bin/bash

declare -i n=$1

if [ $n -ne 0 ]
then
	for (( i=1; i<=$n; i++ ))
	do
		echo "2 ^ $i is $((2**$i))"
	done
else
	echo "Please enter correct number"
fi
