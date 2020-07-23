# Functions, arguments, input checking
*This cheat sheet will collate useful commands from the Bash LinkedIn Learning course on Bash.*

- **Author**: Danny Ramasawmy
- **Date Created**: 2020-07-22
- **Date modified**: 2020-07-22

Links to to Notes:
- [Home](./bash_notes) : Introduction  
- [Variables](./bash_notes_variables) : Variables, Arrays, Strings, Arithmetic  
- [Loop](./bash_notes_loops) : For-Loops, While Loops
- [Comparisons](./bash_notes_comparisons) : If-Else, Case, Comparisons
- [Read and Write Files](./bash_notes_rw_files) : Reading, Writing
- [Functions](./bash_notes_functions) : Functions, Arguments, Input Checking, User Input
- [General](./bash_notes_general) : A collection of miscellaneous snippets

-----------
## Functions
```bash
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

```

## Arguments
```bash
#!/bin/bash
# Argument and flags.

# flag example
#./argument_flag_examples.sh -p hello -u     
# u p flags, the colon "u:" after indicates it expects arguments
# a b are flags, which do not have arguments
# ":"" before indicates all flags which were not listed
while getopts :u:p:ab option; do
	# compare to cases, order does not matter
	case $option in
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
		a) echo "a is flagged";;
		b) echo "b is flagged";;
		# this corresponds to the : before
		?) echo "What is $OPTARG ?";;
	esac
done
# print the user name and password, 
echo "User: $user / Pass: $pass"




# print first argument to this script
echo "This is the first argument '$1'"
# print second argument etc..
echo "This is the second argument '$2'"
# for multiple arguments
# $@ for the array of arguments
for i in $@
do
	echo $i
done
# $# for the number of arguments
echo "There were $# arguments passed to this script."
```

## Input checking
```bash
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
```

## User input
```bash
#!/bin/bash
# User input examples.

# read command to read input
echo "What is your name?"
read name
# -s flag to not display input
echo "What is your password?"
read -s pass
# prompt
read -p "Favorite animal? " animal
# print to check
echo "name: $name, pass: $pass, animal $animal"


# using select, for a list of options
select option in "cat" "dog" "bird" "fish" "quit"
do 
	# test
	echo "You selected $option!"

	# switch-case block pairs nicely
	case $option in
		cat) echo "Cats Meow!";;
		dog) echo  "Dogs Woof!";;
		bird) echo "Birds Squawk!";;
		fish) echo "Fish..err..?";;
		# leave this selection
		quit) break;;
		# fall through condition
		*) echo "Not a valid option!";;
	esac
done
```