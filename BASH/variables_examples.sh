#!/bin/bash
# This script contains some variable examples

# assign variables, note there are no spaces
a=Hello
b="Good Morning"
c=16

# call with dollar sign
echo "$a $b i have $c Apples"

# declaring attributes
# as integer
declare -i d=123
# as read only
declare -r e=456
# other flags, -l convert to lower case, -u to uppercase

# command substitution - put command in brackets to assign
# to a variable
f=$(pwd)
echo "$f"

# put a longer command - assign output 
g=$(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
echo "The ping was $e ms"