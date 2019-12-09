# Listing diff files comma separated
List all files with diffs comma separated.

## Example using the develop branch
```bash
git --no-pager diff --name-only develop | tr '\n' ',' | sed 's/\(.*\),/\1 /'
```

