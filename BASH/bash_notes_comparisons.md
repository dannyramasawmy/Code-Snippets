# If-Else, Switch-Case, Comparisons
*This cheat sheet will collate useful commands from the Bash LinkedIn Learning course on Bash.*

- **Author**: Danny Ramasawmy
- **Date Created**: 2020-07-22
- **Date modified**: 2020-07-22

Links to to Notes:
- [Home](./bash_notes) : Introduction  
- [Variables](./bash_notes_variables) : Variables, Arrays, Strings, Arithmetic  
- [Loops](./bash_notes_loops) : For-Loops, While Loops
- [Comparisons](./bash_notes_comparisons) : If-Else, Case, Comparisons
- [Read and Write Files](./bash_notes_rw_files) : Reading, Writing
- [Functions](./bash_notes_functions) : Functions, Arguments, User Input
- [General](./bash_notes_general) : A collection of miscellaneous snippets

-----------
## If-Else
If else statements use the keywords, `if`, `elif`, `else`, use `fi` to end the if-statement:
```bash
a=4
if [ $a -gt 4 ]; 
then
	echo "$a is greater than 4" 
elif [ $a -lt 4 ]; 
then
	echo "$a is less than 4"
else 
	echo "$a is equal to 4"
fi
```
Regular expressions can also be used, see below.

## Case
If there are multiple options, it may be better to use `case`, use `esac` to end the case statement:
```bash
a="turnip"
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
Comparisons in bash use fairly standard operators, these must be evaluated within square brackets `[[ ]]`, note there should be a space between the square brackets and the variables:
- less than 				- `[[ $a < $b ]]`
- greater than				- `[[ $a > $b ]]`
- less than or equal to 	- `[[ $a <= $b ]]`
- greater than or equal to 	- `[[ $a >= $b ]]`
- equal						- `[[ $a == $b ]]`
- not equal 				- `[[ $a != $b ]]`

For example, comparing a string will return a boolean, note the `$?` is used and a `0` is true, `1` is false:
```bash
# pass
[[ "cat" == "cat" ]]
echo $?
# fail
[[ "cat" == "dog" ]]
echo $?
```


Additionally numbers can make use of comparison operators:
- less than 				: `[[ $a -lt $b ]]`
- greater than				: `[[ $a -gt $b ]]`
- less than or equal to 	: `[[ $a -le $b ]]`
- greater than or equal to 	: `[[ $a -ge $b ]]`
- equal						: `[[ $a -eq $b ]]`
- not equal 				: `[[ $a -ne $b ]]`

In this example the numbers are using the string operators, the output gives surprising answers:
```bash
[[ 20 > 100 ]]
echo $?
```
The arithmetic comparison operators need to be used to get the correct answer:
```bash
[[ 20 -gt 100 ]]
echo $?
```
For multiple comparisons use these operators:
- logical AND 	:	`[[ $a && $b ]]`
- logical OR 	:	`[[ $a || $b ]]`
- logical NOT 	:	`[[ ! $a ]]`

String null value:
- is null		: `[[ -z $a ]]`
- is not null  	: `[[ -n $a ]]`

```bash
a=""
b="cat"
[[ -z $a && -n $b ]]
echo "$? : 0 is success"
```
