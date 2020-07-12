#! /bin/bash

read -p "Enter a number: " number
harmonic=1
for (( counter=2; counter<=$number; counter++ ))
do
	harmonic=`echo "1" $counter $harmonic | awk '{print$1/$2" "$3}' | awk '{print$1+$2}'`
done
echo $number" Harmonic number is "$harmonic

for (( counter=1; counter<=$number; counter++ ))
do
	echo $(( echo "1" $counter | awk '{print$1/$2}' ))
done
