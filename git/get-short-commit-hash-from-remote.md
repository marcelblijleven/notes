# Get short commit hash from remote
When you need to retrieve a commit hash from a remote git repo without cloning, you can use the following git command.

```
git ls-remote https://path.to.repo.git HEAD
```

This will output something like `4b4a7d2ce241f95ac552177b899907be005f62f8	HEAD`. If you only want the first part, pipe the results into `AWK`.

```
git ls-remote https://path.to.repo.git HEAD | awk '{ print $1 }'
```

If you want a short version of the hash, pip the results into `cut`.

```
git ls-remote https://path.to.repo.git HEAD | cut -c -7
```

When you omit HEAD at the end of the command, the output will provide all heads/ refs for the remote repo. Use any of these outputs to target a ref specifically. For example ref/head/release_branch
 
