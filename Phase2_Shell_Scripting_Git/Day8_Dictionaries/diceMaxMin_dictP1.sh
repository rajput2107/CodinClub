#! /bin/bash

declare -A rollCount
rollCount=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0)

function rolldie() {
	roll=$(( RANDOM%6+1 ))

	(( rollCount[$roll]++ ))
	echo "RollCount: "${rollCount[@]}

	ret=`checkCount ${rollCount[@]}`

	if [ $ret -eq 0 ]
	then
		rolldie
	else
		echo "Reached 10"
		findMinMax ${rollCount[@]}
	fi
}

function checkCount() {
	checkDict=$@
	count=0

	for value in $checkDict
	do
		(( count++ ))
		if [ $value -eq 10 ]
		then
			echo "1"
			flag=0
			break
		else
			flag=1
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo "0"
	fi
}

function findMinMax() {
	finalArray=($@)
	max=0
	min=9
	idxMax=0
	idxMin=0
	for(( counter=0; counter<=5; counter++ ))
	do
		if [ $(( finalArray[$counter] )) -gt $max ]
		then
			max=$(( finalArray[$counter] ))
			idxMax=$(( $counter+1 ))
		fi
		if [ $(( finalArray[$counter] )) -lt $min ]
                then
                        min=$(( finalArray[$counter] ))
			idxMin=$(( $counter+1 ))
		fi
	done
	echo "Max Count roll is : "$idxMax " and Max Value is : "$max
	echo "Min Count roll is : "$idxMin " and Min Value is : "$min
}
rolldie
