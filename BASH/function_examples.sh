#!/bin/bash
# Function examples.

# simple function
function greet {
	# a greeting function
	# $1 : indicates the first argument passed to the function
	# $2 : etc etc is the next argument
	echo "Hi there $1! How is your $2?"
}

# test statement
echo "And now, a greeting"
# call the function
greet
# passing arguments with a space after the function
greet Danny morning


# passing in multiple arguments
function numberthings {
	i=1
	# $@ indicates all the function arguments
	for f in $@; do
		# print the item number and that argument
		echo $i : $f
		# increment the counter
		((i+=1))
	done
}

# use command expansion to send the current directory list
numberthings $(ls)
# or use multiple arguments 
numberthings one two three four

