#! /bin/bash

#a
inch=42

feet=`echo $inch | awk '{print$1/12}'`
echo $inch" Inches = "$feet


#b
rectArea=$(( 60*40 ))
meters=`echo $rectArea | awk '{print$1/3.28}'`
echo "Rectangular plot in m is: "$meters

#c
totalArea=$(( rectArea*25 ))
acre=`echo $totalArea | awk '{print$1/43560}'`
echo "Area of 25 such Plots in Acres is: "$acre
