#! /bin/bash

num1=$(( RANDOM%6+1 ))
num2=$(( RANDOM%6+1 ))

sum=$(( $num1+$num2 ))
echo "Sum of both dice numbers is: "$sum

