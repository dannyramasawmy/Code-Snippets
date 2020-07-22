# Variables and Arrays and Strings and Arithmetic
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

## Variables
```bash
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
```

## Array
```bash
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
```

## Strings
```bash
#!/bin/bash
# This script contains some echo and string examples

# create a variable
greeting="hello"

# print statement by statement
echo
echo $greeting, world \(planet\)!

# print literally with single quote
echo
echo '$greeting, world (planet)!'
echo
# print and interpret variable with double quote
echo "$greeting, world (planet)!"

# string concatenation
a="hello"
b="world"
c=$a$b
echo $c

# length of each string
echo "The length of '$a' is ${#a}"
echo "The length of '$c' is ${#c}"

# substring index from 0
# all characters from the 4th index
d=${c:3}
echo $d
# characters from 4th index, next 3 characters
e=${c:3:3}
echo $e
# index from end of the string (need the space)
echo ${c: -4}
# index chunk from end of string
echo ${c: -4:2}

# string replace
# create string
fruit="apple banana banana cherry"
# ${input string/str to replace/replacement str}
echo ${fruit/banana/tomato}
# note it replaces the first "banana" string
# to replace both, use a double slash
echo ${fruit//banana/tomato}
# is # is used, it will only be replaced if its the 
# beginning of the string
echo ${fruit/#apple/grape}
echo ${fruit/#banana/grape}
# the % sign will replace the term if its the end of the string
echo ${fruit/%cherry/plum}
echo ${fruit/%banana/plum}

# bash outputs can be highlighted and colored
# use -e to enable escape sequences - ANSI coloring
echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"

# using string concatenation
flashred="\033[5;31;40m" 
red="\033[31;40m"
none="\033[0m" # reset string

echo -e $flashred"ERROR: "$red"Something went wrong"$none

# used styled text commands, tput
# foreground clr 	:	tput setaf [0-7] 
# background clr 	:   tput setab [0-7]
# no styled 		: 	tput sgv0
# bold 				: 	tput bold
# low intensity 	: 	tput dim
# underline 		: 	tput smul
# blinking 			:	tput blink
# reverse 			: 	tput rev

# using string concatenation
flashred=$(tput setab 2; tput setaf 1; tput blink)
red=$(tput setab 2; tput setaf 1)
none=$(tput sgr0) # reset string
echo -e $flashred"ERROR: "$red"Something went wrong"$none

# printf - similar to most printf functions
printf "NAME:\t%s\nID:\t%04d\n" "Danny" "12"
```

## Arithmetic
```bash
#!/bin/bash
# This script contains some arithmetic examples.

# must use double parenthesis (( ))
# standard operators
# exponentiation : $a ** $b
# multiplication : $a * $b 
# division		 : $a / $b
# modulo 		 : $a % %b
# addition 		 : $a + $b
# subtraction  	 : $a - $b

# simple addition operation
a=2
b=$((a+2))
echo "$a + 2 is equal to $b"

# bash only works with integers use BC command for
# floating point numbers
# it is also possible to use other operators
echo "b => $b"
((b++))
echo "b++ => $b"
((b--))
echo "b-- => $b"
((b+=5))
echo "b+=5 => $b"
((b*=3))
echo "b*=3 => $b"
((b/=3))
echo "b/=3 => $b"
((b-=5))
echo "b-=5 => $b"
```
