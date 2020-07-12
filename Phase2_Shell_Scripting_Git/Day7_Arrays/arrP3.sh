#! /bin/bash 

read -p "Enter the number: " number

iterator=1

while [ $(( $number%2 )) -eq 0 ]
do
	prime[iterator]=2
	(( iterator++ ))
	number=$(( $number/2 ))
done

for (( counter=3; $counter*$counter<=$number; counter=$(( $counter+2 )) 
))
do
	while [ $(( $number%$counter )) -eq 0 ]
	do
		prime[iterator]=$counter
		(( iterator++ ))
		number=$(( $number/$counter ))
	done
done

if [ $number -gt 2 ]
then
	prime[iterator]=$number
fi


echo "Prime Factors are: " ${prime[@]}
