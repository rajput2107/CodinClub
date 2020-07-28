#! /bin/bash

read -p "Enter the number: " isPrime
flag=0
for (( counter=2; counter<=$(( $isPrime/2 )) ; counter++ ))
do
	if [ $(( $isPrime%$counter )) -eq 0 ]
	then
		flag=1
		break
	fi
done
if [ $flag == 0 ]
then
	echo $isPrime" is a Prime Number"
else
	echo $isPrime" is not a Prime Number"
fi
