#! /bin/bash

counter=0
Fruits[((counter++))]="Apple"
Fruits[((counter++))]="Banana"
Fruits[((counter++))]="Kiwi"

echo ${Fruits[2]}

arr=(5 2 6 8)

echo ${arr[2]}
#index / Key
echo ${!arr[@]}
