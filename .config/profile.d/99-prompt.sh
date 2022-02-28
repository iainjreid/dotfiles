#!/bin/sh

# TODO: Tidy and document this utter monstrosity...
# TODO: Unset all unused variables before finishing

CURSOR_STORE=$(tput sc)
CURSOR_RESET=$(tput rc)

IS_GIT="git rev-parse --git-dir 2> /dev/null"

GIT_BR="git symbolic-ref --short HEAD"

GIT_ST="git status -s -uall 2>/dev/null"

COLOR_RESET=$(tput sgr0)
COLOR0=$(tput setaf 1)
COLOR1=$(tput setaf 2)
DIM=$(tput setaf 4)

PS1_PWD="\${PWD/\$HOME/\~}"
PS1_GIT="\$( [ -n \"\$(${IS_GIT})\" ] && ${GIT_BR} )"

PS1_L="\$([ \$? -ne 0 ] && printf ${COLOR0} || printf ${COLOR1})●${COLOR_RESET} "

PS1_R="$DIM${PS1_PWD}$COLOR_RESET ${PS1_GIT} \$([ -n \"\$($GIT_ST)\" ] && printf $COLOR0 || printf $COLOR1)●$COLOR_RESET"
PS1_R_OFFSET=$((${#DIM} + ${#COLOR_RESET} + ${#COLOR0} + ${#COLOR_RESET}))

export PS1="\[${CURSOR_STORE}\$(printf \"%*s\" \$((\$(tput cols) + ${PS1_R_OFFSET} + 2)) \"${PS1_R}\")${CURSOR_RESET}\]${PS1_L}"

unset CURSOR_STORE
unset CURSOR_RESET

unset IS_GIT
unset GIT_BR
unset GIT_ST

unset COLOR_RESET
unset COLOR0
unset COLOR1
unset DIM

unset PS1_PWD
unset PS1_GIT
unset PS1_L

unset PS1_R
unset PS1_R_OFFSET
