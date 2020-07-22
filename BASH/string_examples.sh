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
