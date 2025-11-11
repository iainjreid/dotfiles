#!/bin/sh

# Include the local bin folder in the PATH and any of its subdirectories
if [ -d "$XDG_BIN_HOME" ]; then
        for i in $(find "$XDG_BIN_HOME" -type d); do
                PATH="$PATH:$i"
        done
fi

