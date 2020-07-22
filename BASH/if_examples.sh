#!/bin/bash
# If statement examples.

# if expression
# then
# 	echo "True"
# else
# 	echo "False"
# fi
#
# or
# if expression; then
# 	echo "True"
# elif expression2; then
# 	echo "False"
# fi
a=4
if [ $a -gt 4 ]; then
	echo "$a is greater than 4" 
elif [ $a -lt 4 ]; then
	echo "$a is less than 4"
else 
	echo "$a is equal to 4"
fi

# evaluate a regular expression
# square brackets are a regular expression
b="hel10"
if [[ $a =~ [0-9]+ ]]; then
	echo "There are numbers in the string: $b"
else
	echo "there are no numbers in the string $b"
fi


