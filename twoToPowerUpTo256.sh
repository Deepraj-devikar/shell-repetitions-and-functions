#!/bin/bash

declare -i n=$1

if [ $n -ne 0 ]
then
	i=1
	while [ $((2**$i)) -le 256 ]
	do
		echo "2 ^ $i is $((2**$i))"
		i=$(($i+1))
	done
else
	echo "Please enter correct number"
fi
