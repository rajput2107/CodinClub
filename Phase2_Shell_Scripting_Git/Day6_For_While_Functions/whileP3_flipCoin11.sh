#! /bin/bash

headCount=0
tailCount=0

while [ $headCount -lt 11 ] && [ $tailCount -lt 11 ]
do
	toss=$(( RANDOM%2 ))
	if [ $toss -eq 0 ]
	then
		headCount=$(( $headCount+1 ))
	else
		(( tailCount++ ))
	fi
done

if [ $headCount -gt $tailCount ]
then
	echo "Head Wins"
	echo "Score"
	echo "Head= "$headCount" Tail= "$tailCount
else
	echo "Tail Wins"
	echo "Score"
        echo "Head= "$headCount" Tail= "$tailCount
fi

