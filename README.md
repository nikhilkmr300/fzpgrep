# fzpgrep

fzpgrep is a utility that performs fuzzy matching with `pgrep`. If you're not
familiar with `pgrep`, you can refer to the documentation
[here](https://man7.org/linux/man-pages/man1/pgrep.1.html).

It proves particularly helpful in the following scenarios:

- When you're uncertain about the precise name of the file you're searching for
  with `pgrep`.
- In case of typographical errors while typing into `pgrep`.

For instance, if you're unsure about the exact executable name for VSCode, you
can simply type `fzpgrep vscode`, and it will generate the correct command
for you, which is `pgrep code`.

```bash
$ fzpgrep vscode
Running `pgrep code`...
1107
1812
1885
```

Alternatively, if you make a typo, like typing `phyton` instead of `python`, it
solves it for you.

```bash
$ fzpgrep phyton
Running `pgrep python`...
1386
1389
```

If you intend to pipe the command to another process, consider using the `-q`
flag to suppress the additional text output.

You can pass standard `pgrep` options directly to `fzpgrep`. However, make sure the executable is the first argument in the list. For example,

```bash
$ fzpgrep python -i
Running `pgrep -i python`...
818
819
4842
5709
5769
```

## Installation

You can clone the repository and set the project up yourself. Alternatively, you can install it using [Homebrew](https://brew.sh/).

### Installation through cloning

Clone the repository to your machine.

```bash
git clone https://github.com/nikhilkmr300/fzpgrep.git
```

Symlink the executable into `/usr/local/bin` so you can use the `fzpgrep` utility without typing the whole path everytime.

```bash
ln -s /path/to/project/root/src/fzpgrep /usr/local/bin/fzpgrep
```


### Installation using `brew`

Download `fzpgrep.rb` to your machine.

Run `brew install --build-from-source fzpgrep.rb`.
