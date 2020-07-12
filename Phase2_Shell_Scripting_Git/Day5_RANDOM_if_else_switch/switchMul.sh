#! /bin/bash

echo "Three Number Calculator"
echo "## 1.Addition       ##"
echo "## 2.Subtraction    ##"
echo "## 3.Multiplication ##"
echo "######################"
read -p "Choose on of the following: " val


read -p "Enter number 1: " num1
read -p "Enter number 2: " num2
read -p "Enter number 3: " num3

case ${val} in
	1)	res=$(( $num1+$num2+$num3 ))
		echo $res ;;
	2)	res=$(( $num1-$num2-$num3 ))
                echo $res ;;
	3)	res=$(( $num1*$num2*$num3 ))
                echo $res ;;
	*)	echo "Invalid Option" ;;
esac
