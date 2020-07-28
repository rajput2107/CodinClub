#! /bin/bash

read -p "Enter a number: " num

len=`echo ${#num}`

if [ $len -eq 1 ]
then
	echo "Unit"
elif [ $len -eq 2 ]
then
	echo "Ten"
elif [ $len -eq 3 ]
then
        echo "Hundred"
elif [ $len -eq 4 ]
then
        echo "Thousand"
elif [ $len -eq 5 ]
then
        echo "Ten Thousand"
elif [ $len -eq 6 ]
then
        echo "Lakh"
elif [ $len -eq 7 ]
then
        echo "Million"
fi





