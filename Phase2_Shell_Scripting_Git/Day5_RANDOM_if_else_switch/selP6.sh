#! /bin/bash

read -p "Enter a number from 1 to 7: " num

if [ $num -eq 1 ]
then
        echo "Monday"
elif [ $num -eq 2 ]
then
        echo "Tuesday"
elif [ $num -eq 3 ]
then
        echo "Wednesday"
elif [ $num -eq 4 ]
then
        echo "Thursday"
elif [ $num -eq 5 ]
then
        echo "Friday"
elif [ $num -eq 6 ]
then
        echo "Saturday"
elif [ $num -eq 7 ]
then
        echo "Sunday"
else
        echo "Entered number is not in range 1 to 7"
fi

