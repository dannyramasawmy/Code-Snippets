#!/bin/bash
# For loop examples.

# simple for-loop
echo "Simple loop"
for i in 1 2 3
do
	echo $i
done

# we can use brace expansion for long loops
echo "Using brace expansion"
for i in {1..10..2}
do
	echo $i
done

# c style for-loop
echo "C-style for-loop"
for (( i=1; i<=10; i++ ))
do
	echo $i
done

# loop over an array
echo "Array type expansion"
# create an array
arr=("apple" "banana" "cherry")
# use parameter expansion
for i in ${arr[@]}
do 
	echo "$i is one of my favorite things"
done

# associative array
echo "Associative array example"
declare -A arr2
arr2["Name"]="Joan"
arr2["ID"]="30"
arr2["Job"]="Engineer"
# loop and access the keys in the array with !
for i in "${!arr2[@]}"
do
	# access the correct index and print value
	echo "$i: ${arr2[$i]}"
done

# command substitution
echo "Command substitution example with ls"
counter=0
for i in $(ls)
do
	echo "$counter : $i"
	((counter+=1))
done


