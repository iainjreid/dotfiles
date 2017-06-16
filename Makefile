.PHONY: git

all: git

git:
	cp git/.gitconfig ${HOME}/.gitconfig

vscode-mac:
	cp vscode/settings.json ${HOME}/Library/Application\ Support/Code/User/settings.json
