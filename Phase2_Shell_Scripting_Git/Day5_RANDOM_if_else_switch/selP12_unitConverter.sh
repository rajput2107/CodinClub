#! /bin/bash

echo "### UNIT CONVERTER ###"
echo "##  1.Feet to Inch  ##"
echo "##  2.Feet to Meter ##"
echo "##  3.Inch to Feet  ##"
echo "##  4.Meter to Feet ##"
echo "######################"
read -p "Choose from 1 to 4: " val

case ${val} in
	1)
	read -p "Enter Feet: " feet
	inch=`echo $feet | awk '{print$1*12}'`
	echo $feet" Feet = "$inch" Inches"
	;;
	2)
	read -p "Enter Feet: " feet
        meter=`echo $feet | awk '{print$1*0.3048}'`
        echo $feet" Feet = "$meter" Meters"
        ;;
	3)
	read -p "Enter Inches: " inch
        feet=`echo $inch | awk '{print$1/12}'`
        echo $inch" Inches = "$feet" Feet"
	;;
	4)
	read -p "Enter Meter: " meter
        feet=`echo $meter | awk '{print$1/0.3048}'`
        echo $meter" Meter = "$feet" Feet"
        ;;
	*)
	echo "Please choose from 1 to 4"
	;;
esac
