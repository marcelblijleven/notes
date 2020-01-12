# Ignore node_modules and .git in Backblaze
Add the following lines to ignore all node_modules and .git directories to `/Library/Backblaze.bzpkg/bzdata/ called bzexcluderules_editable.xml`

```
<excludefname_rule plat="mac" osVers="*" ruleIsOptional="t" skipFirstCharThenStartsWith="users/" contains_1="/.git/" contains_2="*" doesNotContain="*" endsWith="*" hasFileExtension="*" />
<excludefname_rule plat="mac" osVers="*" ruleIsOptional="t" skipFirstCharThenStartsWith="users/" contains_1="/node_modules/" contains_2="*" doesNotContain="*" endsWith="*" hasFileExtension="*" />
```

