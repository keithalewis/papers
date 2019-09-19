# Minimal git

The least you need to know to use git.

## Clone

This creates a copy of a git repository on your local filesytem.

## Commit

> git commit -am "commit message"

As you make changes you can `commit` them to your local copy.
You must add a message using the `-m` flag.

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


