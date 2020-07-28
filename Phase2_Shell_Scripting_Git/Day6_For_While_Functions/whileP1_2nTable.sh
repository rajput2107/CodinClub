#! /bin/bash

read -p "Enter the value of n: " number

counter=1
while [ $counter -lt $number ] && [ $(( 2**$counter )) -le 256 ]
do
        result=$(( 2**$counter ))
        echo "2^"$counter"="$result
	(( counter++ ))
done

