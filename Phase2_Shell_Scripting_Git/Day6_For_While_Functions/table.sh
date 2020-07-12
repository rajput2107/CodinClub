#! /bin/bash

read -p "Enter number whose table you want: " value

for (( counter=1; counter<=10; counter++ ))
do
        result=$(( $value*$counter ))
	echo $result
done

