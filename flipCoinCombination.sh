#!/bin/bash/
echo "Welcome to Flip Coin Combination Problem"

#constants
HEAD=0

#UC-1 : Flip a coin and randomly display Head or Tail

flipCoin=$((RANDOM%2))
if [ $flipCoin == $HEAD ]
then
	echo "Head"
else
	echo "Tail"
fi
