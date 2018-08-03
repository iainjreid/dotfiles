#!/bin/bash

RENDER_PIPE=./engine_render_pipe
IFS=","

trap "rm -f $RENDER_PIPE" EXIT

if [[ ! -p $RENDER_PIPE ]]; then
    mkfifo $RENDER_PIPE
fi

cat <>$RENDER_PIPE | while read line; do
    set $line
    echo -en "\033[$1;$2f$3"
done

echo "Render process exiting"