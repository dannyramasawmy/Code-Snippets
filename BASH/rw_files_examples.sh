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