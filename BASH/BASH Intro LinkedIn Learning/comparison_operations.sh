#!/bin/bash
# Logic comparisons.

# standard operations use [[ expression ]] for strings
# less than 				: [[ $a < $b ]]
# greater than				: [[ $a > $b ]]
# less than or equal to 	: [[ $a <= $b ]]
# greater than or equal to 	: [[ $a >= $b ]]
# equal						: [[ $a == $b ]]
# not equal 				: [[ $a != $b ]]
#

# comparing strings, 0 == success
[[ "cat" == "cat" ]]
echo $?

# the $? can be used to echo the return value 1 == fail
[[ "cat" == "dog" ]]
echo $?

# in the example below, the numbers are given as a string
[[ 20 > 100 ]]
echo $?

# standard operations use [[ expression ]] for numbers
# less than 				: [[ $a -lt $b ]]
# greater than				: [[ $a -gt $b ]]
# less than or equal to 	: [[ $a -le $b ]]
# greater than or equal to 	: [[ $a -ge $b ]]
# equal						: [[ $a -eq $b ]]
# not equal 				: [[ $a -ne $b ]]
#

# using the arithmetic comparison operators
[[ 20 -gt 100 ]]
echo $?

# logic operators
# logical AND 	:	[[ $a && $b ]]
# logical OR 	:	[[ $a || $b ]]
# logical NOT 	:	[[ ! $a ]]

# string null value
# is null		: [[ -z $a ]]
# is not null  	: [[ -n $a ]]

# an example, is string a null and is string b not null
echo '[[ -z $a && -n $b ]]'
a=""
b="cat"
[[ -z $a && -n $b ]]
echo "$? : 0 is success"
