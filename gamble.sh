#!/bin/bash

function bet () {
	echo $((RANDOM%2))
}

WIN=1
GOAL=200

wallet=100

countBetWon=0
countBet=0

while [ $wallet -gt 0 -a $wallet -lt $GOAL ]
do
	echo "Wallet $wallet"
	if [ $(bet) -eq $WIN ]
	then
		wallet=$(($wallet+1))
		countBetWon=$(($countBetWon+1))
	else
		wallet=$(($wallet-1))
	fi
	countBet=$(($countBet+1))
done

echo "$countBetWon bets won from $countBet bets"
if [ $wallet -ge $GOAL ]
then
	echo "Reaches the goalof Rs. $GOAL"
elif [ $wallet -le 0 ]
then
	echo "No more money to gamble"
fi
