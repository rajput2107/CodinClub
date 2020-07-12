#! /bin/bash

find . -mtime -7 | awk -F/ '{print$2}' | xargs tar cf abc.rar
if [ -d "backup" ]
then
	mv abc.rar backup/
else
	mkdir backup
	mv abc.rar backup/
fi

