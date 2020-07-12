#! /bin/bash

num1=$(( RANDOM%900+100 ))
num2=$(( RANDOM%900+100 ))
num3=$(( RANDOM%900+100 ))

echo $num1 $num2 $num3

if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ]
then
        echo "Num1 is Smallest"

elif [ $num2 -lt $num3 ]
then
        echo "Num2 is Smallest"
else
        echo "Num3 is Smallest"
fi

echo "and"

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
        echo "Num1 is Greatest"

elif [ $num2 -gt $num3 ]
then
        echo "Num2 is Greatest"
else
        echo "Num3 is Greatest"
fi



