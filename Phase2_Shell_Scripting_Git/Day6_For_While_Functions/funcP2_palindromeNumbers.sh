#! /bin/bash

function reverseDigits() {
	rev_num=0
	num=$1
	while [ $num -gt 0 ]
	do
		rev_num=$(( $rev_num*10+$num%10 ))
		num=$(( $num/10 ))
	done
	echo $rev_num
}

function isPalindrome() {
	rev_n=`reverseDigits $1`

	if [ $rev_n -eq $1 ]
	then
		echo "1"
	else
		echo "0"
	fi
}


read -p "Enter a number: " number

check=`isPalindrome $number`
if [ $check -eq 1 ]
then
	echo "Number is Palindrome"
else
	echo "Number is not Palindrome"
fi


