# git-helper

A set of commands that execute common git tasks. ([diff-highlight](#diff-highlight), [git-sync-fork](#git-sync-fork))

----

### diff-highlight

##### Description:

This perl script should be used in your git configuration.

##### Example:

Extract of _~/.gitconfig_

```
[diff]
  compactionHeuristic = true
[interactive]
  diffFilter = diff-highlight.pl
[pager]
  diff = diff-highlight.pl | less
  log = diff-highlight.pl | less
  show = diff-highlight.pl | less
```

### git-sync-fork

##### Synopsis:

```
git-sync-fork [BRANCH]...
```

##### Example:
```
user@pc:git-project/$ git-sync-fork master gh-pages
```

##### Description:

It updates the branches in fork with the branches in the upstream repository.

##### Assumptions:
- The current directory is the git project.
- The name of the remote for the upstream repository is 'origin'.
- The name of the remote for the forked repository is 'fork'.

----

# OBS

This software is packaged and distributed using [OBS](https://build.opensuse.org)

- Visit its OBS project site here [obs#git-helper](https://build.opensuse.org/package/show/home:binary_sequence:software-for-life/git-helper)
