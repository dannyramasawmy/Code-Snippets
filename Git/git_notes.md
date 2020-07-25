# Git Notes
*This cheat sheet will collate useful commands from the google Coursera course on Introduction to Git and GitHub.*

- **Author**: Danny Ramasawmy
- **Date Created**: 2020-07-18
- **Date modified**: 2020-07-22

Jump to section:
- [Notes 1](./git_notes.md) - Bash commands, version control, basic workflow.
- [Notes 2](./git_notes_2.md) - Advanced features, undoing changes, branches.
- [Notes 3](./git_notes_3.md) - Coming soon.
- [Notes 4](./git_notes_4.md) - Coming soon.

# Week 1 

## Bash commands
Some simple bash commands for viewing files in the terminal.

To view the content of a file use:
``` bash
cat <filename>
```
To compare two files use:
``` bash
diff -u <filename>
```
this function will tell use the difference between two files. The `-u` flag gives more information when printing out the lines of code. 

Create a diff file with the changes you have made to an old file, `>` means redirect output to file.
```bash
diff -u old_file new_file > changes.diff
```
Use the `patch` command to apply changes from a `diff` file to another file.
```bash
patch orig_file.py < changes.diff 
```
Using the `diff` file means you can specify just the lines which have changed (i.e., corrected) rather than send the whole file. These commands are useful if applying a fix to a file. 

Use `chmod` to change the permissions of a file:
```bash
chmod -x myFile.py
```

## Version control systems and basic commands
A version control system (VCS) keeps track of all the changes and edits of the files. SCM stands for source-control management. Git is a VCS created by Linus Torvalds, it can be used, on the server or a local machine... we already know how useful it is.

Check git version, install if not install:
```bash
git --version
sudo apt-get git
```

Configure git, check current config:
```bash
git config --global user.email "my@email.com"
git config --global user.name "myName"
git config -l
```

Initialize git with the `init` or `clone` command:
```bash
git init
git clone
```

After committing, you can view hidden files or inside the repo with the commands:
```bash
ls -la
ls -l -git
```

Use the `add` command to add files to the git staging area, for un-tracked or modified files:
```bash
git add filename.ext
```

Use the `status` command to see which files have been added to the staging area:
```bash
git status
```

use the `commit` command to add the file to the git directory, use the `-m` flag to give it a commit message:
```bash
git commit -m "My first commit!"
```

## Typical git workflow

- Changes to the files
- Stage the with git add
- Commit them with git commit

Good practice for writing a commit message:
```bash
git commit -m <message>
```
1. First line, a short description about what the commit messages are about (approx = 50 chars).
2. Empty line
3. More details, with detail explanations, references and links

Use `log` flag to print these messages, add a flag with a number to see the last n commits:
```bash
git log
git log -2
```
