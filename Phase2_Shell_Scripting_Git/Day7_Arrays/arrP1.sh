#! /bin/bash

for counter in {1..10}
do
	array[counter]=$(( RANDOM%900+100 ))
done

function maxFinder() {
	largest=99
	fnArray=$@

	for value in ${fnArray[@]}
	do
		if [ $value -gt $largest ]
		then
			second=$largest
			largest=$value
		elif [ $value -gt $second -a $value -ne $largest ]
		then
			second=$value
		fi
	done

	echo $second
}

function minFinder() {
        smallest=9999
        fnArray=$@

        for value in ${fnArray[@]}
        do
                if [ $value -lt $smallest ]
                then
                        second=$smallest
                        smallest=$value
                elif [ $value -lt $second -a $value -ne $smallest ]
                then
                        second=$value
                fi
        done

        echo $second
}


echo ${array[@]}
max=`maxFinder ${array[@]}`
echo "Second Largest Element is: "$max
min=`minFinder ${array[@]}`
echo "Second Minimum Element is: "$min
