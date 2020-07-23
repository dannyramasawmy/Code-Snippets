# This contains some helpful commands
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
cp <file> <new file>
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
touch <newfile>
```

## grep

```bash

# can pass multiple arguments in curly brackets
touch {apple, banana, orange}
# brackets can be used for multiple values
echo {1..100}
# add zero padding to names, create multiple files add 0 in front
touch file_{01..100}
# add intervals, 1 to 10 in steps of 2
echo {1..10..2}
# this works with letters too in order of 
# 1: capitals 2: other characters 3: lower case
echo {A..z}
# and with intervals
echo {A..F..2}
# chain these together, i.e, for making many files

# list items in dir 1 element per line
# pipe into wc and count lines (count number of files)
ls -1 | wc -l 

# use | to pipe output from one command into another
ls | more

# copy all the files in this folder into a new folder
# -v is "verbose" show what is being done
# * means all
mkdir ..newfolder
cp -v * ../newfolder
# redirect outputs
cp -v * ../newfolder 1>../sucess.txt 2>../error.txt
# redirect to one file
cp -v * ../newfolder &>../log.txt
# redirect to nowhere
cp -v * ../newfolder &>/dev/null


# grep
# grep <search term> <file>
grep sit pine.txt
# i flag means case insensitive
grep -i sit pint.txt
# pipe results into awk, use print to print 6th item in that line
grep -i sit pint.txt | awk {'print $6'}
# ping - check response time at example .com
# -c option count set to 1
# search output for 'bytes from'
# cut the output by the delimiter -d =
# take the fourth field -f 4
ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4


# put a longer command - assign output 
g=$(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
echo "The ping was $e ms"


# scripts start script with this
#!/bin/bash

# sed and awk

# built in variables
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

# date
# returns the date
date
# return formatted date d/m/y
date +"%d-%m-%y"
# hr min sec
date +"%H-%M-%S"



```