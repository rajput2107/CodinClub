#! /bin/bash

read -p "Enter a number b/w 1 to 100: " guess

low=0
high=100

while [ $low -le $high ]
do
	mid=$(( (( $low+$high ))/2 ))
	echo "1.Type 1 if the guessed number is Greater than "$mid
	echo "2.Type 2 if the guessed number is Less than "$mid
	read -p "Choose one of the above: " finder

	if [ $guess -eq $mid ]
	then
		echo "Guessed number is "$mid
		break
	elif [ $guess -lt $mid ]
	then
		high=$(( $mid-1 ))
	else
		low=$(( $mid+1 ))
	fi
done


