all: git
.PHONY: all git vscode-mac

git :
	-@ unlink ${HOME}/.git-templates
	-@ unlink ${HOME}/.gitconfig
	ln -s ${PWD}/git/.git-templates/ ${HOME}/.git-templates
	ln -s ${PWD}/git/.gitconfig ${HOME}/.gitconfig

vscode-mac :
	-@ unlink ${HOME}/Library/Application\ Support/Code/User/settings.json
	ln -sf ${PWD}/vscode/settings.json ${HOME}/Library/Application\ Support/Code/User/settings.json
