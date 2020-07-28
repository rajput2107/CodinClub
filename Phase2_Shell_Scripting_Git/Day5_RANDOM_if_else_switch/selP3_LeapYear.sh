#! /bin/bash

read -p "Enter Year: " year
check400=$(( $year%400 ))
check4=$(( $year%4 ))
check100=$(( $year%100 ))

if [ $check4 -eq 0 -a $check100 -gt 0 ] || [ $check400 -eq 0 ]
then
	echo $year" is a Leap Year"
else
	echo $year" is not a Leap Year"
fi
