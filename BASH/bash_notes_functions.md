# Functions, arguments, user inputs
*This cheat sheet will collate useful commands from the Bash LinkedIn Learning course: Learning Bash Scripting.*

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
## Functions
Functions are made using the `function` keyword, the `$1` and `$2` are the first and second input argument to a bash function:
```bash
function greet {
	# a greeting function
	# $1 : indicates the first argument passed
	# $2 : is the next argument
	echo "Hi there $1! How is your $2?"
}
```
Testing the statement, pass arguments with a space after the function
:
```bash
greet Danny morning
```
Multiple arguments can be handle by looping using `$@` 
```bash
function numbers {
	i=1
	# $@ indicates all the function arguments
	for f in $@; do
		# print the item number and that argument
		echo $i : $f
		# increment the counter
		((i+=1))
	done
}

# use command expansion to send the current directory list
numbers $(ls)
# or use multiple arguments 
numbers one two three four
```

## Arguments
Flags and arguments can be defined with functions. The `getopts` command can be used, see below, `u:` flag has the colon after which indicates the option expects an argument, `ab` do not have options. The `:` before indicates all flags which are not listed

```bash
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
```
Use `$#` to return the number of arguments:
```bash
echo "There were $# arguments passed to this script."
```

## User input
The `read` command can be used to get a user input:
```bash
echo "What is your name?"
read name
# -s flag to not display input
echo "What is your password?"
read -s pass
# prompt
read -p "Favorite animal? " animal
# print to check
echo "name: $name, pass: $pass, animal $animal"
```
The `select` command can be used to give options:
```bash
select option in "cat" "dog" "bird" "fish" "quit"
do 
	# test
	echo "You selected $option!"

	# switch-case block pairs nicely
	case $option in
		cat) echo "Cats Meow!";;
		dog) echo  "Dogs Woof!";;
		bird) echo "Birds Squawk!";;
		fish) echo "Fish..err..?";;
		# leave this selection
		quit) break;;
		# fall through condition
		*) echo "Not a valid option!";;
	esac
done
```
