#! /bin/bash

currAmount=100
bet=1
broke=0
goal=200
noOfBets=0
winCount=0
headValue=0
tailValue=1

while [ $currAmount -gt $broke ] && [ $currAmount -lt $goal ]
do
	gamble=$(( RANDOM%2 ))
	if [ $gamble -eq $headValue ]
	then
		(( winCount++ )) && currAmount=$(( $currAmount+$bet ))
	else
		currAmount=$(( $currAmount-$bet ))
	fi
	(( noOfBets++ ))
done

echo "GAMBLING RECORD"
if [ $currAmount -eq 0 ]
then
	echo "Lost"
else
	echo "Won"
fi
echo "Amount= "$currAmount
echo "No of Times Won= "$winCount
echo "No of Bets Made= "$noOfBets
