# [fresh] ~/.dotfiles
Run commands, aliases, and general procrastination

### Installation

``` sh
FRESH_LOCAL_SOURCE=iainreid820/dotfiles bash -c "`curl -sL get.freshshell.com`"
```

### Tools used

#### [Freshshell][freshshell]

To help me update my own dotfiles, and the various other libraries that I pull in, I use Freshshell's minimalist CLI.

#### [ESH][esh]

I work on macOS, Debian, and Gentoo, which sourcing packages between systems can be a little tricky. Thankfully I came across ESH, a minimal Bash implementation of ERB which lets me preprocess my scripts before writing them to my home directory. Depending on the target system, I can determine which package manager should be used, for example.

I'd hugely recommended checking out this small templating engine, written in ~160 LOC, it's fantastic.

[freshshell]: https://github.com/freshshell/fresh
[esh]: https://github.com/jirutka/esh

