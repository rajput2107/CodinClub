#! /bin/bash 

read -p "Enter the lower range: " lRange
read -p "Enter the upper range: " uRange


for (( counter=$lRange; counter<=$uRange ; counter++ ))
do
	count=0
	for (( i=2; i<=$(( $counter/2 )); i++ ))
	do
        	if [ $(( $counter%$i )) -eq 0 ]
        	then
                	(( count++ ))
                	break
        	fi
	done
	if [ $count -eq 0 -a $counter != 1 ]
	then
		echo $counter
	fi
done


