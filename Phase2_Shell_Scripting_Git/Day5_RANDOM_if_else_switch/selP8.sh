#! /bin/bash

read -p "Enter 1 number: " num1
read -p "Enter 2 number: " num2
read -p "Enter 3 number: " num3

val1=$(( $num1+$num2*$num3 ))
val2=$(( $num1%$num2+$num3 ))
val3=$(( $num3+$num1/$num2 ))
val4=$(( $num1*$num2+$num3 ))

echo "val1= "$val1 "vale2= "$val2 "val3="$val3 "val4= "$val4

#Maximum
if [ $val1 -gt $val2 -a $val1 -gt $val3 -a $val1 -gt $val4 ]
then
	echo $val1" is Maximum"
elif [ $val2 -gt $val3 -a $val2 -gt $val4 ]
then
	echo $val2" is Maximum"
elif [ $val3 -gt $val4 ]
then
        echo $val3" is Maximum"
else
	echo $val4" is Maximum"
fi



#Minimum
if [ $val1 -lt $val2 -a $val1 -lt $val3 -a $val1 -lt $val4 ]
then
        echo $val1" is Minimum"
elif [ $val2 -lt $val3 -a $val2 -lt $val4 ]
then
        echo $val2" is Minimum"
elif [ $val3 -lt $val4 ]
then
        echo $val3" is Minimum"
else
        echo $val4" is Minimum"
fi

