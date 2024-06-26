# Minimal git

> All git clones are alike; each clone gets messed up in its own way.

If you are cloning an existing repository you can skip to the Clone section but it
is useful to know how git repositories are created.

## Init

> git init

Create a git repository in the current directory.  

You will see a directory called `.git` that contains information git uses to keep track of changes.

## Add

> git add _files..._

Add one or more _files..._ to the repository.  

This doesn't really add files to the repository. It just tells git you might want to `commit` them.

## Commit

> git commit -a -m "_commit message_"

You must specify a _commit message_ using the `-m` flag.
The `-a` flag commits all the added and/or changed files.

A commit is a snapshot of all files that have been added or changed.

It will be permenently stored in the repository.

Each commit creates a new key associated with
this collection of files that becomes the new `HEAD`.

Every commit command will output a message telling you what the key is
in case you are interested.

## master

As you make commits they are appended to _master_: the linear sequence of
keys starting from the initial repository that are generated by the commits.

## HEAD

The keys are 20 character strings that are not convenient to remember or use
so git uses short-hand notation to _reference_ certain keys. The most recent key
is called `HEAD`. 

## Clone

> git clone _repository_

This creates a copy of a git _repository_. The repository can be the
path to a repository on a filesystem or a URL to another computer.

If you are using [GitHub](https://github.com) the repository URL will look something
like `https://github.com/`_account_`/`_repository_`.git`, where _account_ is
the name of the github account and _repository_ is the name of a repository
in the account.

The clone is completely independent of the original repository but
git makes it possible to synchronize changes between repositories.

Git uses the name `origin` to refer to the original repository that
you have cloned from.

## Push

> git push

After cloning a repository and adding files or making local local changes you can
`push` them back to the original repository.

When you are ready to move your local commits to the original repository
that you cloned use `push`. This command is equivalent to

> git push origin master

This merges your commits into the master branch of the original repository.  

## Pull

> git pull

If others (or you) have pushed changes to the original repository you
can merge them using `pull`.

If there are conficts in the files you have changed or commited
then you will be unable to pull until you you resolve the conflicts.

## Fetch

> git fetch

This is similar to pull but it does not change your existing files. It just retrieves
bookkeeping information about changes that have been made in the original repository.

## Merge

> git merge

Fetch followed by `merge` is the same thing as `pull`.
You can also merge all differences from a branch of a repository using

> git merge _repository_ _branch_

A naked `git merge` is equivalent to `git merge origin master`.

This is where things can get messed up. If there are conflicting
edits you have to tell git what you want to keep, what you
want to throw out, and what you want to modify.

The original reposity does not change, only the branch you are
merging to does. Once you have fixed things up, you will need to
do another commit to tell git to keep the changes. You will
also have to do a push if you want the original repository
to pick up your changes.

## Fork

This is not minimal git, but a common worklow on GitHub is to `fork`
a repository, `clone` it, and work on your improvements independently of
the forked repository. After pushing your changes to your fork you
can notify the maintainer of the forked repository that they may
want to merge your changes by issuing a _Pull Request_.

If your changes get approved then others who have forked the repository
can pull your code.

They should pull the code to their fork first, then pull to their clone.

## Remote

> git remote add _name_ _repository_

This tells git that it can refer to a _repository_ using _name_.
The current repository already has a name: `origin` If `origin` is a
fork of a repository then it is customary to use the name `upstream`
for the repository that has been forked. This lets you pull changes from
`upstream` to your repository directly. You must then commit and push them to
`origin` if you want them to show up there.

Typical usage is

> git pull upstream master

to pull all changes in the master branch. Then

> git commit

to let your local repository know you want to keep the changes and

> git push

to incorporate them into the repository you forked.

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

## Implementation


Git manages collections of files. Each collection has a unique identifier.
Identifiers can be _referrence_d using aliases. Git does not give a whit
about individual files. It only works with the entire snapshot of all
the files it knows about.

A git repository is a _key-value_ database. The keys are 20 byte character strings
and the values are a collection of files. The keys are [SHA-1](https://en.wikipedia.org/wiki/SHA-1)
hash values computed from the collection of files associated with them.

It is not convenient for humans to type out 20 character strings to refer to a collection
of files so git also has short-hand _reference_s to keys.
For example, the alias `HEAD` refers to the latest collection of files.

As new files are 'add'ed and existing files are changed in the initial
collection of files, they can be _commit_ed to the _master_ _branch_.
Git updates the `HEAD` alias to refer to the most recent commit.

New lines of development (collections of files) can be _branch_ed off of
master by providing a name (reference) for the branch. As changes are
commited to the branch, git updates `HEAD` to refer to the most recent
commit on the branch.

These changes can be _merge_d back into master at any time, but master
might have changed too in the meantime.

If there are no _conficts_ then the merge is the union of all the changes.
If overlapping changes occurred (a conflict) then you will have to _resolve_
the changes.

The merge has no effect on the branch you are merging from. It creates a
new commit on the branch you are merging too.

Any git repository can be _clone_d. This creates a new, independent copy
of the repository that has a life of its own. The new repository creates
the alias `origin` referring to the repository it was cloned from.

Keeping two repositories in sync can be difficult. You can _push_ your
changes back to the original or _pull_ any changes in the original to
your clone, but if either or both have changed (had more commits) then 
things can get messy.
