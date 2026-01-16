#!/bin/sh

# TODO: Support global and local todo checks depending on whether the local
#       directory is a Git repository. "tdl" should default to search the local
#       directory if run directly regardless.
function td() {
  grep -nsR TODO ~/Projects --exclude-dir=.git | fzf --nth 1  --delimiter : --bind 'enter:become(vim +{+2} {+1})'
}

# function tdg {

# }

# function tdl {

# }

export FZF_DEFAULT_OPTS="--style minimal"
