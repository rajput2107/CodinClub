#! /bin/bash

read -p "Enter a number: " num

len=`echo ${#num}`

case ${len} in
	1) echo "Unit" ;;
	2) echo "Ten"  ;;
	3) echo "Hundred" ;;
	4) echo "Thousand";;
	5) echo "Ten Thousand" ;;
	6) echo "Lakh"  ;;
	7) echo "Million" ;;
	*) echo "Calculation available only till Million"  ;;
esac
