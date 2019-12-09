# Find emoji with unicode categories
For example, if you have the following text: Hi 👋! How are you?

Using the following regex allows you to find the emoji using unicode categories
```
/\p{Emoji}/u.exec(Hi 👋🏻! How are you?)
```

The important parts are:
```
\p{Emoji}
```
And the `u` flag at the end of the regex, which stands for `unicode`

