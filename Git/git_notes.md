# GIT Notes
*This cheat sheet will collate useful commands from the google Coursera course on Git and GitHub.*

- **Author**: Danny Ramasawmy
- **Date Created**: 2020-07-18
- **Date modified**: 2020-07-19

# Week 1

## 1) Bash commands
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

## 2) Version control systems and basic commands
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

## 3) Typical git workflow

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

# Week 2

## Advanced features

Skipping the staging, if all the files are going to be committed, the staging step can be skipped using the `-a` input flag:
```bash
git commit -a -m "Will skip the staging step"
```

The patches that were made in each get commit can be viewed by passing the `-p` flag, or by using the `show` command:
```bash
git log -p
git show <ID>
```

Use the `diff` command to see the changes that you have made (just like the `diff` command) before committing to the repository:
```bash
git diff
``` 

Use the `-p` flag to review each change and whether they should be committed or not:
```bash
git add -p
```

To delete files, use `rm`, this deletes the file from the directory and stages it to be committed.
```bash
git rm <filename>
```

To rename a file use `mv`, this renames a file name and stages it to be committed, this command can also be used to move files between directories.
```bash
git mv <filename> <newfilename>
```

To ignore files in a folder (for example large data files) make a `.gitignore` file. This file needs to be tracked similar to other files:
```bash
.gitignore
    .txt
    .<extension>
```

## Undoing changes
It is useful to revert changes in git. The `checkout` command can be used to "checkout" a version of the file before they get staged. I.e., if there is an error in the file `<filename>`, the `checkout` command can be used to revert the changes to how it was previously, the `-p` flag allows you to review the changes individually:
```bash
git checkout <filename>
git checkout <filename> -p
```

To undo changes after they have been staged, i.e, after using `git add *`, use the `reset` command:
```bash
git reset HEAD <filename>
```

To fix changes that have already been committed, use the `--amend` flag, i.e., forgot to add a file to be tracked. This will amend and overwrite the last commit. Avoid amending these commits that have been pushed to public repositories:
```bash
git commit --amend
```

If a commit needs to be reverted, "rollbacked" use, `revert`, this creates a commit which is the inverse of all the commits, so it keeps the history of the commits. Its good to add a reason to the revert, use the `<ID>` to revert back to a specific commit.
```bash
git revert HEAD
git revert <ID, 30ekjsd...>
```

## Branches 
Branch is a pointer to particular commit, it can be an independent line. The main branch is called the MASTER, this is the current working version, which is tidy and stable. New branches can be added to develop and try features.

To check what branches exist in a repository use the `branch` command:
```bash
git branch
```

To make a new branch, call the `branch` command with the name of the new branch, call `git branch` to check which branches exists, and what the current branch is:
```bash
git branch new-feature
```

To change to the branch use the `checkout` command:
```bash
git checkout new-feature
```

To create a new branch and switch to it at the same time:
```bash
git checkout -b new-branch
```

To delete a branch use `-d` flag, git will throw a warning if there are changes which have not been merged into the master branch:
```bash
git branch -d <branchname>
```

To merge two branches, use `git merge`, firstly move to the master branch (if we want to merge the development into the master):
```bash
git checkout master
git merge <branchname>
```

If the master branch is catching up with the development branch, then this is called a fast forward merge. If the two branches have diverged, this is called a three-way merge. If the merges were made in separate files git can merge them successfully. If the same part of the files in both branches have modifications then there will be a conflict in the merge, so git will ask for which version to keep, at this point you can edit both.

Use `--abort` flag to revert changes back to the last commit before the merge.

# Week 3

