#!/bin/bash

RENDER_PIPE=./engine_render_pipe

trap "rm -f $RENDER_PIPE" EXIT

if [[ ! -p $RENDER_PIPE ]]; then
    mkfifo $RENDER_PIPE
fi

while read LINE; do {
    printf "\e[%d;%df\e[0;%dm█" ${LINE//,/ }
} done <>$RENDER_PIPE

echo "Render process exiting"
