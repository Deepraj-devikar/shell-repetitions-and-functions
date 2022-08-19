#!/bin/bash

coinFlip () {
	echo $((RANDOM%2))
}

HEADS=0
TAILS=1

countHeads=0
countTails=0

while [ 1 ]
do
	coin=$(coinFlip)
	if [ $coin -eq $HEADS ]
	then
		countHeads=$(($countHeads+1))
	elif [ $coin -eq $TAILS ]
	then
		countTails=$(($countTails+1))
	fi
	if [ $countHeads -eq 11 ]
	then
		echo "Heads win 11 times"
		break
	elif [ $countTails -eq 11 ]
	then
		echo "Tails win 11 times"
		break
	fi
done
