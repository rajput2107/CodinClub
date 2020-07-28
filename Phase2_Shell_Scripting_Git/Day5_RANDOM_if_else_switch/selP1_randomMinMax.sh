#! /bin/bash

num1=$(( RANDOM%900+100 ))
num2=$(( RANDOM%900+100 ))
num3=$(( RANDOM%900+100 ))

echo $num1 $num2 $num3

if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ]
then
        echo $num1" is Smallest"

elif [ $num2 -lt $num3 ]
then
        echo $num2" is Smallest"
else
        echo $num3" is Smallest"
fi

echo "and"

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
        echo $num1" is Greatest"

elif [ $num2 -gt $num3 ]
then
        echo $num2" is Greatest"
else
        echo $num3" is Greatest"
fi



