#! /bin/bash


declare -A diceCount
diceCount=(["dice1"]=0 ["dice2"]=0 ["dice3"]=0 ["dice4"]=0 ["dice5"]=0)

function diceCounter() {

	if [ $2 -eq 6 ]
	then
		diceCount[$1]=$(( ${diceCount[$1]}+1 ))
	fi

}


for (( counter=1; counter<=20; counter++ ))
do
	dice1=$(( RANDOM%6+1 ))
	dice2=$(( RANDOM%6+1 ))
	dice3=$(( RANDOM%6+1 ))
	dice4=$(( RANDOM%6+1 ))
	dice5=$(( RANDOM%6+1 ))

	diceCounter "dice1" $dice1
	diceCounter "dice2" $dice2
	diceCounter "dice3" $dice3
	diceCounter "dice4" $dice4
	diceCounter "dice5" $dice5
done

for index in ${!diceCount[@]}
do
	echo $index " Count of 6 is: " ${diceCount[$index]}
done
