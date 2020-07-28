for i in {1..5}
do
	arr[$i]=$((RANDOM%5))
done

narr=(0 -1 2 -3 1)
# this sort doesn't work for negtv numbers use -g with sort to 
# perform generic sort not -n (numberic sort)
echo ${arr[@]}
IFS=$'\n' sorted=($(sort <<<"${arr[*]}"))
unset IFS

echo ${sorted[@]}
printf "[%s]\n" "${sorted[@]}"
