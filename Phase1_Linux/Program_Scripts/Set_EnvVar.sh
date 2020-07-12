#! /bin/bash

var1=`printenv usersecret`
len=`echo ${#var1}`

if [ $len -gt 0 ]
then
	echo "UserSecret Exists"

else
	export usersecret="dH34xJaa23"
	echo "UserSecret has been set"
	echo `printenv usersecret`
fi
