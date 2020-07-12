#! /bin/bash


data=$(cat passwd.txt | awk -F: '{if($4>1000) {print$1":"$7}}')

for i in $data
do
	user=$(echo $i | cut -d: -f1)
	dir=$(echo $i | cut -d: -f2)
	chown  : $dir
	echo $user
	ls -l $dir
done




