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

