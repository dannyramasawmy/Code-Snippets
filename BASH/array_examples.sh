#!/bin/bash
# This script contains array examples.

# empty array
a=()
# 3 element array, note no commas
b=("apple" "banana" "cherry")
# retrieve element, index at 0
echo ${b[2]}

# elements can be set, with the index, no need to populate everything
b[5]="kiwi"
# append to array
b+=("mango")
# print the whole array with @
echo ${b[@]}
# print part of array
echo ${b[@]: -1}

# associative array example, dictionary/ key-value pair
# for bash v3+
declare -A myarray
myarray[color]=blue
myarray["my location"]="London England"
# access with key
echo ${myarray["my location"]} is ${myarray["color"]}