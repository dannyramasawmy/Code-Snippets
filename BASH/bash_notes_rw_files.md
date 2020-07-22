# Reading and Writing files
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

## RW files
```bash
#!/bin/bash
# This script demonstrates some examples of
# reading and writing files.

# to write to a file (using >)
echo "some text" > file.txt
# read the file
cat file.txt

# use > alone to clear contents of a file
> file.txt
cat file.txt

# use >> to append to a file
echo "some new text" > file.txt
echo "Additional text" >> file.txt
cat file.txt

# while loop to read a line at a time
i=1
while read f; do
	echo "Line $i: $f"
	((i++))
done < file.txt

# here document - for long text/commands
cat << EndOfText
This is a 
	multiline
text string
EndOfText

# if you add a dash removes spaces in-front of lines
cat <<- EndOfText
	This is a 
	multiline
	text string
EndOfText
```