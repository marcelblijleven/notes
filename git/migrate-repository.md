# Migrate GIT repository
## Option 1
```
git clone --mirror old-repo-url
cd repo-name
# Cloning with --mirror marks the repo as bare, run the following to set it to non-bare
git config --bool core.bare false
git remote set-url origin new-repo-url
git push -f origin
```

## Option 2
To migrate a git repository to a new server, first checkout the repository from the 'old server'

```bash
git pull ssh://git@github.com/marcelblijleven/old.git
```

Afterwards, add a new remote which points to the new location
```bash
git remote add name_new_location new_location_url
```

You can now push the checked out repository to the new location
```bash
git push name_new_location master
```

You can also push everything to the new location
```bash
git push -u name_new_location --all
```

If needed, you can remove the old location from the repository
```bash
git remote rm origin
```

You can now rename name_new_location to origin if you want.
`git remote rename name_new_location origin`

