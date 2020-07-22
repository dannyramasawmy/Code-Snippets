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