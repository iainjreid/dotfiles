# [fresh][freshshell] ~/.dotfiles
Run commands, aliases, and general procrastination

## Installation

### Base

``` sh
FRESH_LOCAL_SOURCE=iainreid820/dotfiles bash -c "`curl -sL get.freshshell.com`"
```
This will install [Fresh][freshshell], a library that helps developers maintain clean dotfiles,and then proceed to install my own set of profiles, utilities, and general configuration under the current users home directory.

Some programs such as Vim however, will need a few more third party tools to work as expected.

### Git Time Metric

```sh
wget -O ${HOME}/bin/gtm https://github.com/git-time-metric/gtm/releases/download/v1.3.5/gtm.v1.3.5.linux.tar.gz
```
I track the time I spend working on most of my personal projects, and [Git Time Metric][git-time-metric] helps me do this brilliantly.

[freshshell]: https://github.com/freshshell/fresh
[git-time-metric]: https://github.com/git-time-metric/gtm

## macOS

### Terminal

I use Alacritty as my go to terminal emulator!

### MacVim

```bash
# Hide the title bar
defaults write org.vim.MacVim MMNoTitleBarWindow true

# Add a little padding to the window
defaults write org.vim.MacVim MMTextInsetTop 20
defaults write org.vim.MacVim MMTextInsetRight 20
defaults write org.vim.MacVim MMTextInsetBottom 20
defaults write org.vim.MacVim MMTextInsetLeft 20
```

