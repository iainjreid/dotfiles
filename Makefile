.SUFFIXES:
.SILENT:

# I use the XDG specification to keep my home folder relatively distraction
# free. If you have non-standard XDG variables set, be sure override these
# parameters!
XDG_CONFIG_HOME = $(HOME)/.config
XDG_BIN_HOME = $(HOME)/.local/bin

# By default files are symlinked from the dotfiles folder to their destination,
# but this could easily be overridden to maybe copy them instead.
#
# If you do opt to  change this variable, the cleanup task won't work. It works
# on the premise that all dotfiles are softlinks to this directory.
LN = ln -sn

# (document this)
MAKE = make -s

# target: help	Show this help
help:
	@egrep "^# target: " Makefile | sed -e "s/# target: \(\b\)/\1/"

# target: all	Link all of the dotfiles
all: bin git npm profile rust tmux vim xdg

bin: profile
	$(MAKE)	link-config		TARGET=profile.d/10-bin.sh

foil: bin
	$(MAKE)	link-bin		TARGET=foil

fwd: bin
	$(MAKE)	link-bin		TARGET=fwd

git:
	$(MAKE)	link-config		TARGET=git

npm: profile
	$(MAKE) link-config		TARGET=npm
	$(MAKE)	link-config		TARGET=profile.d/50-nodejs.sh

profile: $(XDG_CONFIG_HOME)/profile.d
	$(MAKE)	link-home		TARGET=.profile

prompt: profile
	$(MAKE)	link-config		TARGET=profile.d/99-prompt.sh

rust: profile
	$(MAKE)	link-config		TARGET=profile.d/50-rust.sh

shutdown: bin
	$(MAKE)	link-bin		TARGET=shutdown

suspend: bin
	$(MAKE)	link-bin		TARGET=suspend

tmux: $(XDG_CONFIG_HOME)
	$(MAKE)	link-config		TARGET=tmux

vim: profile
	$(MAKE)	link-config		TARGET=vim
	$(MAKE)	link-config		TARGET=profile.d/99-vim.sh

xdg: profile
	$(MAKE)	link-config		TARGET=profile.d/00-xdg.sh

# target: clean	Dereference all links to these dotfiles
clean:
	find $(HOME) -type l -maxdepth 3 -exec ls -la {} \; | fgrep $(PWD) | awk '{ print $$9 }' | xargs -r rm

$(XDG_CONFIG_HOME) $(XDG_BIN_HOME) $(XDG_CONFIG_HOME)/profile.d $(XDG_CONFIG_HOME)/Xresources.d:
	mkdir -p $@

# target: link-config Manually link a home file
link-home:
	$(MAKE) $(HOME)/$(TARGET)

$(HOME)/$(TARGET): $(PWD)/$(TARGET)
	echo "Linking: $< -> $@"
	$(LN) $< $@

# target: link-config Manually link a config file
link-config: $(XDG_CONFIG_HOME)
	$(MAKE) $(XDG_CONFIG_HOME)/$(TARGET)

$(XDG_CONFIG_HOME)/$(TARGET): $(PWD)/.config/$(TARGET)
	echo "Linking: $< -> $@"
	$(LN) $< $@

# target: link-config Manually link a bin file
link-bin: $(XDG_BIN_HOME)
	$(MAKE) $(XDG_BIN_HOME)/$(TARGET)

$(XDG_BIN_HOME)/$(TARGET):
	echo "Linking: $< -> $@"
	$(LN) $(PWD)/.local/bin/$(TARGET) $@

