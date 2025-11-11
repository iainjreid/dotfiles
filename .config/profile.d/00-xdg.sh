#!/bin/sh

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME-"$HOME/.config"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME-"$HOME/.cache"}

export XDG_DATA_HOME=${XDG_DATA_HOME-"$HOME/.local/share"}
export XDG_STATE_HOME=${XDG_DATA_HOME-"$HOME/.local/state"}
export XDG_BIN_HOME=${XDG_BIN_HOME-"$HOME/.local/bin"}
export XDG_LIB_HOME=${XDG_LIB_HOME-"$HOME/.local/lib"}

export XDG_DATA_DIRS=${XDG_DATA_DIRS-"/usr/local/share:/usr/share"}
export XDG_BIN_DIRS=${XDG_BIN_DIRS-"/usr/local/bin:/usr/bin"}
export XDG_LIB_DIRS=${XDG_LIB_DIRS-"/usr/local/lib:/usr/lib"}

export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR-"/tmp"}

