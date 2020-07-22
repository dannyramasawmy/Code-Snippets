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