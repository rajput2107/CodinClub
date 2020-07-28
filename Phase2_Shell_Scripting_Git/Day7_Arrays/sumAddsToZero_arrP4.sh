#! /bin/bash

arr=( 0 -1 2 -3 1 -3 )


function findTriplets(){
	found=1
	newArr=($@)
	IFS=$'\n'
	size=${#newArr[@]}
	sortedArr=($(sort -g <<<"${newArr[*]}"))
	unset IFS

	for(( i=0; i<$(( $size-1 )); i++ ))
	do
		left=$(( $i+1 ))
		right=$(( $size-1 ))
		current="${sortedArr[$i]}"

		while [ $left -lt $right ]
		do
			if [ $(( $current+"${sortedArr[$left]}"+"${sortedArr[$right]}" )) -eq 0 ]
			then
				echo $current,${sortedArr[$left]},${sortedArr[$right]}
				(( left++ ))
				(( right-- ))
				found=0
			elif [ $(( $current+"${sortedArr[$left]}"+"${sortedArr[$right]}" )) -lt 0 ]
			then
				(( left++ ))
			else
				(( right-- ))
			fi
		done
	done

	if [ $found -eq 1 ]
	then
        	return 1
	fi

}

ret=`findTriplets ${arr[@]}`
invalidCheck=$?
echo $ret


if [ $invalidCheck -eq 1 ]
then
	echo "No Triplet sum equals 0 found"
fi
