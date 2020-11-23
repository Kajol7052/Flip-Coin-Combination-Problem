#!/bin/bash/
echo "Welcome to Flip Coin Combination Problem"

isHEAD=0

echo "Enter number of coins : "
read NUMBER_OF_COIN

#to declare dictionary
declare -A Flip

echo -n "Enter the number of Coin Flip : "
read numberOfCoinFlip

#function to generate doublet,triplet upto n
function coinFlipGenerator()
{
        for(( count=0;count<$numberOfCoinFlip;count++ ))
        do
                coin=""
                for(( countCoin=0; countCoin<$NUMBER_OF_COIN; countCoin++ ))
                do
                        flipCoin=$((RANDOM%2))
                        if [[ $flipCoin -eq $isHEAD ]]
                        then
                                coinSide+="H"
                        else
                                coinSide+="T"
                        fi
                done
                ((Flip[$coinSide]++))
                coinSide=""
        done
}

#function to generate percentage
function totalPercentage()
{
        for index in ${!Flip[@]}
        do
		echo "Count and Percent of $Flip[$index] => $((${Flip[$index]})) , $(( ${Flip[$index]} * 100 / $numberOfCoinFlip)) %"
        done
}

coinFlipGenerator
totalPercentage

