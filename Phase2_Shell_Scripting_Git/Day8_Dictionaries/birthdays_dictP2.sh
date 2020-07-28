#! /bin/bash

declare -A birth_count
declare -A same_month
for i in {1..50}
do
	birth_month=$(( RANDOM%12+1 ))
	(( birth_count[$i]=$birth_month ))
done

for (( counter=1; counter<=12; counter++ ))
do
	echo ""
	echo "Birthdays in " $counter " month"
	for (( i=1; i<=50 ; i++ ))
	do
		if [ ${birth_count[$i]} -eq $counter ]
		then
			echo "Individual : "$i
		fi
	done
done
