#! /bin/bash

for i in {1..5}
do
	digit=$(( RANDOM%90+10 ))
	sum=$(( sum+$digit ))
done
echo "Sum of 5 Random Two Digits Number is: "$sum
echo "Average is: "$(( sum/5 ))

