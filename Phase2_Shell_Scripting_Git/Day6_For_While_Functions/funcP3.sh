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

        primePalin=`isPrime $rev_n`
	if [ $primePalin -eq 1 ]
	then
		echo "1"
        else
                echo "0"
        fi
}


function isPrime() {
	flag=0
	prime=$1
	for (( counter=2; counter<=$(( $prime/2 )) ; counter++ ))
	do
		if [ $(( $prime%$counter )) -eq 0 ]
		then
			flag=1
			break
		fi
	done
	if [ $flag == 0 ]
	then
		echo "1"
	else
		echo "0"
	fi
}


read -p "Enter a number: " number
primeCheck=`isPrime $number`

if [ $primeCheck -eq 1 ]
then
        echo $number" Number is Prime"
	checkPalindrome=`isPalindrome $number`
	if [ $checkPalindrome -eq 1 ]
	then
		echo $number " Palindrome is also Prime"
	else
		echo $number " Palindrome is not Prime"
	fi
else
        echo $number" Number is not Prime"
fi




