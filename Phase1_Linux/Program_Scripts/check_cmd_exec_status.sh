#! /bin/bash

status=`ls`
if [ $? -eq 0 ]
then
	echo "Command ls Executed Successfully"
else
	echo "Command ls Execution Failed"
fi

status=`hello` > tty1
if [ $? -eq 0 ]
then
	echo "Command hello Executed Successfully"
else
	echo "Command hello Execution Failed"
fi
