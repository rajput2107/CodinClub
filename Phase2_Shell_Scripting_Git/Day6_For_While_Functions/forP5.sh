#! /bin/bash

read -p "Enter the number: " number
sum=1
for (( counter=$number; counter>=1; counter-- ))
do
	sum=$(( $counter*$sum ))
done
echo "Factorial of "$number" is "$sum
