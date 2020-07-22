# Loops
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

## For Loops
For loop examples:
```bash
#!/bin/bash
# For loop examples.

# simple for-loop
echo "Simple loop"
for i in 1 2 3
do
	echo $i
done

# we can use brace expansion for long loops
echo "Using brace expansion"
for i in {1..10..2}
do
	echo $i
done

# c style for-loop
echo "C-style for-loop"
for (( i=1; i<=10; i++ ))
do
	echo $i
done

# loop over an array
echo "Array type expansion"
# create an array
arr=("apple" "banana" "cherry")
# use parameter expansion
for i in ${arr[@]}
do 
	echo "$i is one of my favorite things"
done

# associative array
echo "Associative array example"
declare -A arr2
arr2["Name"]="Joan"
arr2["ID"]="30"
arr2["Job"]="Engineer"
# loop and access the keys in the array with !
for i in "${!arr2[@]}"
do
	# access the correct index and print value
	echo "$i: ${arr2[$i]}"
done

# command substitution
echo "Command substitution example with ls"
counter=0
for i in $(ls)
do
	echo "$counter : $i"
	((counter+=1))
done
```

# While Loops
While loop examples.
```bash
#!/bin/bash
# While loop examples.

# counter index
i=0
# start while-loop while index < 10
while [ $i -le 10 ]; do
	# print the index
	echo i:$i
	# increment counter
	((i+=1))
# finish loop
done

# until loop, similar to before, check final value
j=0
until [ $j -ge 10 ]; do
	echo j:$j
	((j+=1))
done
```
