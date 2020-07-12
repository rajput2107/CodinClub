#! /bin/bash

read -p "Enter the value of n: " n

for (( counter=1; counter<=n; counter++ ))
do
	result=$(( 2**$counter ))
	echo "2^"$counter"="$result
done
