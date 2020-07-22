#!/bin/bash
# Check the correct number of inputs;

# Try
# ./input_checking_example 
# ./input_checking_example  Dan 3
# ./input_checking_example Danny 3 29 


# if the number of input arguments is less than 3
if [ $# -lt 3 ]; then
	# use cat to print a long message
	cat <<- EOM
	This comman requires three arguments:
	username, id, and a number.
	EOM
# else do something 
else
	# print the input arguments
	echo "Username : $1"
	echo "ID : $2"
	echo "Numer : $3"
fi


# or use a while loop for a read command
# prompt for a favorite animal
read -p "Favorite animal?" a
# while a is a null string (-z) 
while [[ -z "$a" ]]; do
	# repeat statement
	read -p "Again: Favorite animal?" a
done
echo "Thank you, $a"


# or use a default answer
# prompt for a favorite animal, assumed answer in brackets
read -p "Favorite animal? [cat]" a
# while a is a null string (-z) 
while [[ -z "$a" ]]; do
	# assign assumed answer
	a="cat"
done
echo "Thank you, $a"


# input validation
# prompt for input
read -p "What year? [nnnn]" a
# use a regular expression, 
# if a is not a number from 1 to 9 four elements
while [[ ! $a =~ [0-9]{4} ]]; do
	read -p "Again: What year? [nnnn]" a
done