#! /bin/bash

for file in `ls *log.1`
do
	filename=`echo $file | awk -F. '{print$1}'`
	echo $filename
	ext=`echo $file | awk -F. '{print$2}'`
	echo $ext
	DATE=`date +%d%m%Y`
	echo $DATE
	newfile=$filename-$DATE.$ext
	mv $file $newfile
	echo $newfile
done
