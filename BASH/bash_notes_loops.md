# For-Loops and While-Loops
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
## For Loops
For loops can be written in a few different ways, for example explicitly writing the items to iterate over:
```bash
for i in 1 2 3
do
	echo $i
done
```
Brace expansions can be used to loop over large arrays:
```bash
for i in {1..10..2}
do
	echo $i
done
```
They can also be written in the style of c:
```bash
for (( i=1; i<=10; i++ ))
do
	echo $i
done
```
Items in an array can be looped over:
```bash
arr=("fork" "knife" "spoon")
for i in ${arr[@]}
do 
	echo "$i on the table"
done
```
Items in an associative array can be looped:
```bash
# associative array
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
```
Items returned from a command substitution can be iterated, for example using `ls`:
```bash
counter=0
for i in $(ls)
do
	echo "$counter : $i"
	((counter+=1))
done
```

## While Loops
While loops are also available, the while loop requires a condition statement, for example "-le", less than or equal to:
```bash
i=0
while [ $i -le 10 ]; do
	echo i:$i
	((i+=1))
done
```
