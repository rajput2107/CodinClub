#! /bin/bash

for file in `ls *.log`
do
	count=`grep -c "systemd" $file`
	if [ $count -gt 0 ]
	then
		echo "No. of occurrence of systemd in "$file "is "$count
	fi
done
