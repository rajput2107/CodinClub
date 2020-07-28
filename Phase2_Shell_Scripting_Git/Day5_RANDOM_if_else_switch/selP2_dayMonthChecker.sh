#! /bin/bash

read -p "Enter the day: " day
read -p "Enter the month: " month

if [ $day -ge 1 -a $day -le 31 ] && [ $month -ge 1 -a $month -le 12 ]
then
	if [ $month -eq 3 -a $day -ge 20 ]
	then
		echo "True"
	elif [ $month -eq 4 -a $day -le 30 ]
	then
		echo "True"
	elif [ $month -eq 5 ]
	then
		echo "True"
	elif [ $month -eq 6 -a $day -le 20 ]
	then
		echo "True"
	else
		echo "False"
	fi
else
	echo "Invalid Date / Month"
fi
