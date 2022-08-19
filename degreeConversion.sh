#!/bin/bash

function addition () {
	local result=`echo "$1+$2" | awk -F "+" '{print ($1+$2)}'`
	echo $result
}

function substraction () {
	local result=`echo "$1-$2" | awk -F "-" '{print ($1-$2)}'`
	echo $result
}

function multiplication () {
	local result=`echo "$1*$2" | awk -F "*" '{print ($1*$2)}'`
	echo $result
}

function division () {
	local result=`echo "$1/$2" | awk -F "/" '{print ($1/$2)}'`
	echo $result
}


function degCToDegF () {
	degF=$(multiplication $1 9)
	degF=$(division $degF 5)
	degF=$(addition $degF 32)
	echo $degF
}

function degFToDegC () {
	degC=$(substraction $1 32)
	degC=$(multiplication $degC 5)
	degC=$(division $degC 9)
	echo $degC
}

FREEZING_POINT_IN_CENTIGRATE=0
FREEZING_POINT_IN_FARANHITE=32
BOILING_POINT_IN_CENTIGRATE=100
BOILING_POINT_IN_FARANHITE=212

function computeCentigrate () {
	if [ $1 -lt $FREEZING_POINT_IN_CENTIGRATE ]
	then
		echo "temprature is below freezing point"
	elif [ $1 -eq $FREEZING_POINT_IN_CENTIGRATE ]
	then
		echo "temprature is at freezing point"
	elif [ $1 -lt $BOILING_POINT_IN_CENTIGRATE ]
	then
		echo "temprature is normal"
	elif [ $1 -eq $BOILING_POINT_IN_CENTIGRATE ]
	then
		echo "temprature is at boiling point"
	else
		echo "temprature is above boiling point"
	fi
	echo "$1 C in centigrate will be $(degCToDegF $1) F in faranhite"
}

function computeFaranhite () {
	if [ $1 -lt $FREEZING_POINT_IN_FARANHITE ]
	then
		echo "temprature is below freezing point"
	elif [ $1 -eq $FREEZING_POINT_IN_FARANHITE ]
	then
		echo "temprature is at freezing point"
	elif [ $1 -lt $BOILING_POINT_IN_FARANHITE ]
	then
		echo "temprature is normal"
	elif [ $1 -eq $BOILING_POINT_IN_FARANHITE ]
	then
		echo "temprature is at boiling point"
	else
		echo "temprature is above boiling point"
	fi
	echo "$1 F in faranhite will be $(degFToDegC $1) C in centigrate"
}

echo -n "Enter temprature : "
read t

declare -i t=$t

echo "Enter temprature unit : "
echo "C for centigrate"
echo "F for faranhite"
read u

case $u in
	[Cc])
		computeCentigrate $t
	;;
	[Ff])
		computeFaranhite $t
	;;
	*)
		echo "you did not entered correct temprature unit"
	;;
esac


