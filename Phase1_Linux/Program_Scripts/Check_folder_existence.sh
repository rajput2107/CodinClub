#! /bin/bash

read -p "Enter folder name: " dir
echo $dir

for folder in `ls`
do
	if [ ! -d $dir ]
	then
		mkdir $dir
		break
	else
		echo "FOLDER ALREADY EXISTS"
		break
	fi
done
