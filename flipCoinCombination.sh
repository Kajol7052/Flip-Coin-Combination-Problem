#!/bin/bash/
echo "Welcome to Flip Coin Combination Problem"

#constants
HEAD=0

#variables
headCount=0
tailCount=0

#Syntax to declare Dictionary
declare -A singletFlip

#user input
echo -n "Enter the number of times Coin Flip : "
read numberOfCoinFlip

#to store head count and tail count in dictionary
for(( count=0; count<$numberOfCoinFlip; count++ ))
do
	FlipCoin=$(( RANDOM % 2 ))

	if [ $FlipCoin -eq $HEAD ]
	then
		singletFlip[HEAD]=$((++headCount))
	else
		singletFlip[TAIL]=$((++tailCount))
	fi
done

#converting to percentage
singletHeadPercentage=`echo "$(( $headCount * 100 / $numberOfCoinFlip ))"`
singletTailPercentage=`echo "$(( $tailCount *100 / $numberOfCoinFlip ))"`

#print count and percentage
echo "Single Head Count: $headCount , Single Head Percentage : $singletHeadPercentage"
echo "Single Tail Count: $tailCount , Single Tail Percentage : $singletTailPercentage"

