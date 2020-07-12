#! /bin/bash

function toFahrenheit() {
	degF=`echo $1 | awk '{print$1*(9/5)+32}'`
	echo $degF
}

function toCelsius() {
        degC=`echo $1 | awk '{print$1-32}' | awk '{print$1*(5/9)}'`
        echo $degC
}


echo "1.Convert temperature from Fahrenheit to Celsius"
echo "2.Convert temperature from Celsius to Fahrenheit"
read -p "Enter your choice (1, 2): " choice

case ${choice} in
	1)
	read -p "Enter temperature in Fahrenheit: " temp
	celsius=`toCelsius $temp`
	echo $temp" F = "$celsius " C"
	;;

	2)
	read -p "Enter temperature in Celsius: " temp
        fahrenheit=`toFahrenheit $temp`
	echo $temp " C = "$fahrenheit " F"
        ;;

	*)
	echo "Invalid Option"
	;;
esac

