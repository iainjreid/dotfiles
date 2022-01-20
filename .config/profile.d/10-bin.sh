#!/bin/sh

# Include the local bin folder in the PATH
if [ -d "$XDG_BIN_HOME" ]; then
        PATH="$XDG_BIN_HOME:$PATH"
fi

