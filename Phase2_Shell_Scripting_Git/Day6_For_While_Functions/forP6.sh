#! /bin/bash 

read -p "Enter the number: " number
echo "Prime Factors of "$number " are: "
while [ $(( $number%2 )) -eq 0 ]
do
	echo "2"
	number=$(( $number/2 ))
done

for (( counter=3; $counter*$counter<=$number; counter=$(( $counter+2 )) ))
do
	while [ $(( $number%$counter )) -eq 0 ]
	do
		echo $counter
		number=$(( $number/$counter ))
	done
done

if [ $number -gt 2 ]
then
	echo $number
fi
