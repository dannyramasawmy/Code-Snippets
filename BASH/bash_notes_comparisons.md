# If-Else, Switch-Case, Comparisons
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
## If-Else
```bash
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

```

## Case
```bash
#!/bin/bash
# Switch-Case example.

# test 
a="turnip"
# test conditions
case $a in
	# in cat? then print feline
	cat) echo "Feline";;
	# in bee? then print insect
	bee) echo "insect";;
	# in either dog or puppy then print canine
	dog|puppy) echo "Canine";; 
	# all other cases
	*) echo "Not sure!";;
esac
```

## Comparisons
```bash
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

```
