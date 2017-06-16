.PHONY: git

all: git

git:
	cp -R git/.git-templates ${HOME}/.git-templates
	cp git/.gitconfig ${HOME}/.gitconfig

vscode-mac:
	cp vscode/settings.json ${HOME}/Library/Application\ Support/Code/User/settings.json
