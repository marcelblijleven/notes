# Print directories as tree
There is the tool called `tree` (`brew install tree` or `sudo apt-get install tree`), but the following command also works just fine:

```sh
find . -type d | sed -e "s/[^-][^\/]*\//  |/g" -e "s/|\([^ ]\)/|-\1/"
```
