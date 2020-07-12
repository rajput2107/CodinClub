#! /bin/bash -x

function myfunc() {
	echo $1
	countNoOfParams=$#
}

result="$( myfunc $(( RANDOM%3 )) )"
echo "No of params= "$countNoOfParams
if [ $result -eq 1 ]
then
	echo "Success"
else
	echo "Failure"
fi

function declare_array(){
	$1 "Hello"
}
function show_array(){
	echo $1
}
declare_array show_array
