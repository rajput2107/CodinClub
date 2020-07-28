#! /bin/bash

iterator=0

for (( counter=0; counter<=100; counter++ ))
do
	if [ $counter -ne 0 ] && [ $(( $counter%11 )) -eq 0 ]
	then
		array[$iterator]=$counter
		(( iterator++ ))
	fi
done

echo ${array[@]}
