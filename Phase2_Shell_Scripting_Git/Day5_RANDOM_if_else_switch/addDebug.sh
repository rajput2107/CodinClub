#! /bin/bash

read -p "Enter Value of x: " x
read -p "Enter Value of y: " y

sum=$(( $x+$y ))
sub=$(( $x-$y ))
div=$(( $x/$y ))
mul=$(( $x*$y ))
mod=$(( $x%$y ))

floatdiv=`echo $x $y | awk '{print $1/$2}'`

echo "Sum is "$sum
echo "Difference is "$sub
echo "Division is "$div
echo "Multiplication is "$mul
echo "Modulus is "$mod
echo "Float div is "$floatdiv
