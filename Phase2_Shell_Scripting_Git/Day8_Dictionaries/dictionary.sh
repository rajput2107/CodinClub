#! /bin/bash

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound: " ${sounds[dog]}
echo "Animal Sounds: " ${sounds[@]}
echo "All animals: " ${!sounds[@]}



declare -A cities

cities=(["Maharashtra"]="Mumbai" ["UP"]="Lucknow" ["TN"]="Chennai")
echo ${cities[@]}
echo ${cities[Maharashtra]}
cities["Kerala"]="Cochin"
echo ${cities[@]}


echo "length" ${#cities[@]}

echo "index" ${!cities[@]}

for index in ${!cities[@]}
do
	echo "index" $index "element" ${cities[$index]}
done
