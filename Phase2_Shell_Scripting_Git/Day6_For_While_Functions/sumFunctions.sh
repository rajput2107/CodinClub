#! /bin/bash -x

function mysum() {
	sum=$(( $1+$2 ))
	echo $sum
}

"$( mysum 2 3 )"
sum1=`mysum 1 2`
