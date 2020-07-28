#! /bin/bash

for counter in {1..10}
do
        array[counter]=$(( RANDOM%900+100 ))
done

function maxFinder() {
        fnArray=($@)

	IFS=$'\n' sorted=($(sort <<<"${fnArray[*]}"))
	unset IFS

	echo "${sorted[-2]}"
}

function minFinder() {
        fnArray=($@)

        IFS=$'\n' sorted=($(sort <<<"${fnArray[*]}"))
        unset IFS

        echo "${sorted[1]}"
}


echo ${array[@]}
max=`maxFinder ${array[@]}`
echo "Second Largest Element is: "$max
min=`minFinder ${array[@]}`
echo "Second Minimum Element is: "$min
