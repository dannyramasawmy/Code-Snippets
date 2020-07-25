# Variables, Strings, Arrays and Arithmetic
*This cheat sheet will collate useful commands from the Bash LinkedIn Learning course: Learning Bash Scripting.*

- **Author**: Danny Ramasawmy
- **Date Created**: 2020-07-22
- **Date modified**: 2020-07-23

Links to to Notes:
- [Home](./bash_notes) : Introduction  
- [Variables](./bash_notes_variables) : Variables, Arrays, Strings, Arithmetic  
- [Loops](./bash_notes_loops) : For-Loops, While Loops
- [Comparisons](./bash_notes_comparisons) : If-Else, Case, Comparisons
- [Read and Write Files](./bash_notes_rw_files) : Reading, Writing
- [Functions](./bash_notes_functions) : Functions, Arguments, User Input
- [General](./bash_notes_general) : A collection of miscellaneous snippets

-----------
## Variables
Use `=` to assign the variables, note there can't be spaces:
```bash
# assign variables, note there are no spaces
a=Hello # strings do not need to be in quotes
b="Good Morning"
c=16
```
Print to the bash prompt with `echo` and call the variables with `$`:
```bash
# call variables with dollar sign
echo "$a $b i have $c Apples"
```
Variables can have different attributes declared:
```bash
# as integer
declare -i d=123
# as read only
declare -r e=456
# other flags, -l convert to lower case, -u to uppercase
```
Command substitution allows command outputs to be assigned to a variable with the notation `$(<command>)`:
```bash
f=$(pwd)
echo "$f"
```

## Strings
Strings do not need to be kept in quotes, use `\` before special characters, for example: 
```bash
greeting="hello"
echo $greeting, world \(earth\)!
>> hello, world (earth)!
```
Alternatively, putting a string in single quotes, `'like this'` will print literally: 
```bash
echo '$greeting, world (earth)!'
>> $greeting, world (earth)!
```
Finally, strings can be put in double quotes `"like this" to allow special characters:
```bash
echo "$greeting, world (earth)!"
```
Strings can easily be concatenated:
```bash
# string concatenation
a="hello"
b="world"
c=$a$b
echo $c
```
Use `#` to get the length of the string:
```bash
string="four"
echo "The length of '$string' is ${#string}"
```
Strings can be indexed to return a substring, these are indexed from 0:
```bash
# all characters from the 4th index
string="hello world"
sub1=${string:3}
echo $sub1
# characters from 4th index, next 3 characters
sub2=${string:3:3}
echo $sub2
# index from end of the string (need the space)
echo ${string: -4}
# index from end of string
echo ${string: -4:2}
```
Bash has sophisticated string replacing options, in the format `${input string/string to replace/replacement string}
`:
```bash
objects="chair table office screen table"
echo ${objects/table/car}
```
Note it replaces the first "table" string to replace both, use a double slash:
```bash
echo ${objects//table/car}
```
Use `#` to replace the string if its at the start of the string, and use `%` to replace the word if it is at the end 
```bash
echo ${objects/#chair/fork}
echo ${objetcs/%table/spoon}
```
Bash outputs can be highlighted and colored, google ANSI coloring for bash for more details.

## Arrays
Arrays can be created with a `()`, and elements accessed with `[]`:
```bash
# empty array
a=()
# 3 element array, note no commas
array=("table" "chair" "screen")
# retrieve element, index at 0
echo ${array[2]}
```
Elements can be set using `[]` there is no need to populate the whole array:
```bash
array[5]="tea"
```
Or appended with `+=`:
```bash
array+=("water")
```
Print part or all (with `@`) of the array: 
```bash
echo ${array[@]}
echo ${array[@]: -1}
```
Associative arrays are dictionaries or key-value pairs:
```bash
declare -A array
array[biscuit]=digestive
echo ${array["biscuit"]} 
```


## Arithmetic
Some simple arithmetic can be done with Bash, double brackets are needed, `(( ))`:
- exponentiation | `$a ** $b` 
- multiplication | `$a * $b`
- division		 | `$a / $b`
- modulo 		 | `$a % %b`
- addition 		 | `$a + $b`
- subtraction  	 | `$a - $b`

For example, a simple addition: 
```bash
x=2
y=$((x+2))
echo "$x + 2 is equal to $y"
```
Bash mainly works with integers, use `BC` command to use floating point numbers, some examples of other operators are:
```bash
echo "x => $x"
((x++))
echo "x++ => $x"
((x--))
echo "x-- => $x"
((x+=5))
echo "x+=5 => $x"
((x*=3))
echo "x*=3 => $x"
((x/=3))
echo "x/=3 => $x"
((x-=5))
echo "x-=5 => $x"
```
