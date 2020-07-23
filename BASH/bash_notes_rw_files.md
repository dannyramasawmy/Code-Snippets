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

-----------
## Writing files
Writing files is simple using the `>` character:
```bash
echo "some text" > file.txt
```
Files can be read using `cat`:
```bash
cat file.txt
```
The `>` character can be used alone to clear the contents of a file:
```bash
> file.txt
cat file.txt
```
The `>>` can be used to append to a file:
```bash
echo "some new text" > file.txt
echo "extra text" >> file.txt
cat file.txt
```
Files can be read line by line with a while loop:
```bash
i=1
while read f; do
	echo "Line $i: $f"
	((i++))
done < file.txt
```