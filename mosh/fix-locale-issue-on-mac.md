# Fix locale issue on mac
When you run into this issue while trying to establish a mosh connection, comment out the `SendEnv LANG LC_*` line in `/etc/ssh/ssh_config`

## Solution
```
# SendEnv LANG LC_*
```

## Issue
```
The locale requested by LC_CTYPE=UTF-8 isn't available here.
Running `locale-gen UTF-8' may be necessary.

The locale requested by LC_CTYPE=UTF-8 isn't available here.
Running `locale-gen UTF-8' may be necessary.

mosh-server needs a UTF-8 native locale to run.

Unfortunately, the local environment (LC_CTYPE=UTF-8) specifies
the character set "US-ASCII",

The client-supplied environment (LC_CTYPE=UTF-8) specifies
the character set "US-ASCII".

locale: Cannot set LC_CTYPE to default locale: No such file or directory
locale: Cannot set LC_ALL to default locale: No such file or directory
LANG=
LANGUAGE=
LC_CTYPE=UTF-8
LC_NUMERIC="POSIX"
#alias l='ls -CF'
LC_TIME="POSIX"
LC_COLLATE="POSIX"
LC_MONETARY="POSIX"
LC_MESSAGES="POSIX"
LC_PAPER="POSIX"
LC_NAME="POSIX"
LC_ADDRESS="POSIX"
LC_TELEPHONE="POSIX"
LC_MEASUREMENT="POSIX"
LC_IDENTIFICATION="POSIX"
LC_ALL=
Connection to <server name> closed.
/usr/local/bin/mosh: Did not find mosh server startup message. (Have you installed mosh on your server?)
```
