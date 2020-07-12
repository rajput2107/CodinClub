#! /bin/bash

read -p "Enter lower range " lrange
read -p "Enter Upper range " urange
range=urange-lrange
val=$(( RANDOM%range+lrange+1 ))

echo $val
