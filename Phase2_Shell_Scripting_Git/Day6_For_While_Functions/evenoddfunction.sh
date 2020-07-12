#! /bin/bash

function evenodd(){
	if [ $(( $1%2 )) -eq 0 ]
	then
		square $1
		return 0
	else
		return 1
	fi
}

function square() {
	result=$(( $1**2 ))
	echo $result
}

read -p "Enter the number: " number
evenodd $number
ret=$?
if [ $ret -eq 0 ]
then
	echo "Number is Even: "$number
else
	echo "Number is Odd: "$number
fi
