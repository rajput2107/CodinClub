#! /bin/bash

limit=10
number=1
count=1
range=5
while [ $count -le $range ]
do
	while [ $number -le $limit ] && [ $(( $count*$number )) -le 20 ]
	do
        	result=$(( $count*$number ))
		echo $count"*"$number"="$result
		(( number++ ))
	done
	(( count++ ))
	number=1
	printf "\n"
done

