# I use the XDG specification to keep my home folder relatively distraction
# free. If you have non-standard XDG variables set, be sure override these
# parameters!
XDG_CONFIG_HOME = $(HOME)/.config
XDG_BIN_HOME = $(HOME)/.local/bin

# By default files are symlinked from the dotfiles folder to their destination,
# but this could easily be overridden to copy them instead.
LN = ln -sn

# target: help	Show this help
help:
	@egrep "^# target: " Makefile | sed -e "s/# target: \(\b\)/\1/"

# target: all	Link all of the dotfiles
all: bin git npm profile rust tmux vim xdg

bin: $(XDG_BIN_HOME) $(XDG_CONFIG_HOME) profile xdg
	$(LN)	$(PWD)/.local/bin/*                     $(XDG_BIN_HOME)/
	$(LN)	$(PWD)/.config/profile.d/10-bin.sh      $(XDG_CONFIG_HOME)/profile.d/

git: $(XDG_CONFIG_HOME)
	$(LN)	$(PWD)/.config/git                      $(XDG_CONFIG_HOME)/

npm: $(XDG_CONFIG_HOME) profile xdg
	$(LN)	$(PWD)/.config/npm                      $(XDG_CONFIG_HOME)/
	$(LN)	$(PWD)/.config/profile.d/50-nodejs.sh   $(XDG_CONFIG_HOME)/profile.d/

profile: $(XDG_CONFIG_HOME)/profile.d
	$(LN)	$(PWD)/.profile                         $(HOME)/

rust: $(XDG_CONFIG_HOME) profile xdg
	$(LN)	$(PWD)/.config/profile.d/50-rust.sh     $(XDG_CONFIG_HOME)/profile.d/

tmux: $(XDG_CONFIG_HOME)
	$(LN)	$(PWD)/.config/tmux                     $(XDG_CONFIG_HOME)/

vim: profile
	$(LN)	$(PWD)/.vim                             $(HOME)/
	$(LN)	$(PWD)/.config/profile.d/99-vim.sh      $(XDG_CONFIG_HOME)/profile.d/

xdg: $(XDG_CONFIG_HOME) profile
	$(LN)	$(PWD)/.config/profile.d/00-xdg.sh      $(XDG_CONFIG_HOME)/profile.d/

# target: clean	Dereference all links to these dotfiles
clean:
	find $(HOME) -type l -maxdepth 3 -exec ls -la {} \; | fgrep $(PWD) | awk '{ print $$9 }' | xargs -r rm

$(XDG_CONFIG_HOME) $(XDG_BIN_HOME) $(XDG_CONFIG_HOME)/profile.d:
	mkdir -p $@

