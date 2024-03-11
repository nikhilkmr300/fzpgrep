# fzpgrep

fzpgrep is a utility that performs fuzzy matching with `pgrep`. If you're not
familiar with `pgrep`, you can refer to the documentation
[here](https://man7.org/linux/man-pages/man1/pgrep.1.html).

It proves particularly helpful in the following scenarios:

- When you're uncertain about the precise name of the file you're searching for
  with `pgrep`.
- In case of typographical errors while typing into `pgrep`.

For instance, if you're unsure about the exact executable name for VSCode, you
can simply type `./fzpgrep.py vscode`, and it will generate the correct command
for you, which is `pgrep code`.

```bash
$ ./fzpgrep.py vscode
Running `pgrep code`...
1107
1812
1885
```

Alternatively, if you make a typo, like typing `phyton` instead of `python`, it
solves it for you.

```bash
$ ./fzpgrep.py phyton
Running `pgrep python`...
1386
1389
```

If you intend to pipe the command to another process, consider using the `-q`
flag to suppress the additional text output.

You can pass standard `pgrep` options directly to `fzpgrep`. However, make sure the executable is the first argument in the list. For example,

```bash
$ ./fzpgrep.py python -i
Running `pgrep -i python`...
818
819
4842
5709
5769
```
