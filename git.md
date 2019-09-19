# Minimal git

The least you need to know to use git.

## Clone

> git clone _repository_

This creates a copy of a git _repository_ on your local filesytem.

## Commit

> git commit -am "_commit message_"

As you make changes you can `commit` them to your local copy.
You must add a _commit message_ using the `-m` flag.

## Push

> git push

When you are ready to move your local commits to the original repository use `push`

## Pull

> git pull

If others have pushed changes to the original repository you can get them using `pull`.

If there are conficts (overlapping changes) then you will be unable to pull until
you commit your local changes.

## Fetch

> git fetch

This is similar to pull but it does not change your existing files. It just retrieves
information about changes that have been made in the original repository.

## Merge

> git merge

Fetch followed by `merge` is the same thing as `pull`.

## Remote

> git remote add _name_ _repository_

This tells git that it can refer to a _repository_ using _name_.
The current repository already has a name: `origin`
If `origin` is a fork of a repository then it is customary to
use the name `upstream`. This lets you pull changes from `upstream`
to your repository directly. You must commit and push them to
`origin` if you want them to show up there.

Typical usage is

> git pull upstream master

to pull all changes in the master branch.

## Branches

Every repository has a branch called `master`. Every commit is sequentially added to
the `master` branch by default.

Repositories can have _branches_. These are sequences of commits independent of the
`master` branch. These permit streams of development to happen in parallel.

To start a new branch from your current `master` use

> git checkout -b _branch_

Where _branch_ is the name you want to use for the branch. To get back to your `master`
branch use

> git checkout master

Be sure to commit your work on _branch_ before you do this. If you have an existing
branch you can get back to that by 

> git checkout _branch_

The `-b` flag is only needed if you are creating an new branch.

