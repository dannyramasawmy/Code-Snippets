# This contains some helpful commands
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
## Common commands
List files in a directory:
```bash
ls <path>
# -l - list details
# -1 - one file per line 
# -a - see hidden files
```
Make or remove a folder:
```bash
mkdir <folder name>
rmdir <folder to delete>
```
Change directories, use `~` for the home directory:
```bash
cd <path>
cd ~
```
See the version of bash:
```bash
echo $BASH_VERSION
```
See the working directory:
```bash
pwd
```
Copy a file:
```bash
cp -v <file> <new file>
# -v flag is verbose
```
Remove a file:
```bash
rm <file>
```

## Files
Look at the documentation of a command:
```bash
man <command>
```
Print the file contents to the command line:
```bash
cat <file>
```
Paginate the contents of a file:
```bash
cat <file>
```
See the beginning of a file:
```bash
head <file>
```
See the end of the file:
```bash
tail <file>
```
Create a file:
```bash
touch <newfile0> <newfile1> ... <newfileN>
```
## Brace expansions
Multiple values can be created with `{}`, for example making files with names 1 to 10:
```bash
touch {1..10}
```
The can have left zero padding, they will be padded to the length of the longest number
```bash
# with zero padding
echo {01..100}
```
Intervals can be specified with a third parameter:
```bash
echo {1..10..2}
```
Letters can also be expanded, they are in order of 1) capitals -> other characters -> lower case:
```bash
echo {A..z}
echo {A..F..2}
```

## Pip
Pipe ls into wc to count files in a folder:
```bash
ls -1 | wc -l 
```
Pipe ls into other functions, such as more:
```bash
ls | more
```

## Searching files
Use `grep` to search for a string in a file, try with the text file, the `-i` flag is case insensitive:
```bash
grep <search word> <file>
grep FINDME lorem.txt
grep -i findme lorem.txt
```
Pipe the string into `awk` and print the third in the line:
```bash
grep -i find lorem.txt | awk {'print $3'}
```
Also search for `sed` and `awk`.

## Finding files
Use the `find` command to find files of specific types
```
$ find . -name "*<extension>" -type f
$ find . -name "*.png" -type f
```
Delete these files by adding the delete flag
```
$ find . -name "*.dng" -type f -delete
```

## Time
The date and time can be formatted wit the `date` function, this might be useful for appending this information to files...etc...:
```bash
date
```
This can be formatted:
```bash
date +"%d-%m-%y"
date +"%H-%M-%S"
```

## Built in variables
Bash has some built in variables which can be called, google for more info:
```bash
# return current directory
$PWD
# return machine type
$MACHTYPE
# return system name
$HOSTNAME
# bash version
$BASH_VERSION
# timer (how long script has run)
$SECONDS
# random number
$RANDOM
```

## Remove dir-paths from terminal
Use the code below to remove clutter in the terminal by hiding the path (stack-exchange).
```bash
export PS1='\u@\h: '
```