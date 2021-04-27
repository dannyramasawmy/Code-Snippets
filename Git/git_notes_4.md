# Git Notes
*This cheat sheet will collate useful commands from the google Coursera course on Introduction to Git and GitHub.*

- **Author**: Danny Ramasawmy
- **Date Created**: 2020-07-18
- **Date modified**: 2021-04-27

Jump to section:
- [Notes 1](./git_notes.md) - Bash commands, version control, basic workflow.
- [Notes 2](./git_notes_2.md) - Advanced features, undoing changes, branches.
- [Notes 3](./git_notes_3.md) - Remotes and rebasing.
- [Notes 4](./git_notes_4.md) - Pull requests, squashing changes, issue tracker.


# Week 4
## Pull Request
Forking is a way to create a copy of the repository so it belongs to the new user, this might be helpful if there are restrictions on who can access and commit to the repo. After making changes to the forked repository you submit a pull request so the owner of the repo can decide whether to merge your changes.

Pull request workflow:
- fork a repo from another owner, you are now the maintainer of the forked repo
- modify files on the forked repo as you would a repo that you own
- after forking the repo a pull request on github can be created to integrate your changes back with the original repository
- your pull request will generate a unique ID incase you need to update the pull request later

## Squashing changes
You may be asked to0 squash the changes of your pull request to a single commit, you might need to rebase your commits, passing the `-i` flag allows the rebase to be done interactively, change the first word of each line:
```bash
git rebase -i <branch>
```
In interactive mode there is an option called `squash` this melds the commits together. After squashing you might want to push the new single commit to the remote repo, this can throw a warning so the push needs to be forced with the `-f` flag:
```bash
git push -f
```
Forcing is ok with pull request/forked branches as no one else should have committed but shoul not be done with public repos.

Code reviews are useful in letting other see and check your code.

## Issue tracker

Use issue tracker on github to create and track bugs. When creating an issue be verbose to make it as clear as possible. Issues have unique numbers to identify it, add `#<number if issue>` to reference the issue. Including the string (below) in the commit message when merging automatically closes the pull request:
```bash
Closes: #<number of issue>
```
Assign the issues to collaborators to make it clear who is working on the issue.

## Continuous integration
A continuous integration system tests the code every time there is a change.
Continous deployment means the code is deployed often with incremental updates to avoid big changes to code.