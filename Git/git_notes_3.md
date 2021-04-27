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


# Week 3

## Github
Web service for hosting git repositories, with extra features. After creating a repo on github, clone the repository to get a local copy:
```bash
git clone <url to repo>
```
After modifying the local repo, use the `push` command to push the changes to the remote repository on github:
```bash
git push
```
Use a credential helper to avoid the need of putting in the password for each commit, enable it with:
```bash
git config --global credential.helper cache
```
Use the `pull` command to retrieve changes from the repo:
```bash
git pull
```

## Remotes
See the remote, and to see the origin remote:
```bash
git remote -v
git remote show origin
```
To see the remote branches:
```bash
git branch -r
```
To change the remote branch first, pull the remote branch, merge it with the local branch and push to the origin. The `status` command will indicate if the local branch is up-to date with the remote branch:
```bash
git status
```
If the local branch (i.e., `local/master`) is not up-to date with the remote branch (`origin/master`), the changes on the remote branch must first be fetched with `fetch`, these are not automatically synced with the local `master` branch:
```bash
git fetch
```
Use the `checkout`, `log` commands to view what changes have been made to the remote branch:
```bash
git log origin/master
```
Now merge the changes with the local branch
```bash
git merge origin/master
```
`fetch` geta the changes from the remote but does not merge them, `pull` gets the changes and merges them.
```bash
git pull
```
A three way merge might be needed.

To push only to a remote branch use:
```bash
git push -u origin <branchname>
```

## Rebasing changes
If the branch you are working on has separated from the master branch, and there has been a commit to the master in the mean time, you can `rebase` your changes instead of performing a three way merge, this effectively changes where the branch split from the master branch so only a fast forward merge is needed. For example rebasing a `development` branch:
```bash
git checkout <master>
git pull
git checkout <development>
git rebase <master>
```
To delete the local feature branch:
```bash
git push --delete origin refactor
git branch -d refactor
```


To see the branches/tree:
```bash
git log --graph --oneline --all
```