all: git
.PHONY: all git vscode-mac

git :
	-@ unlink ${HOME}/.git-templates
	-@ unlink ${HOME}/.gitconfig
	-@ unlink ${HOME}/.gitignore
	ln -s ${PWD}/git/.git-templates/ ${HOME}/.git-templates
	ln -s ${PWD}/git/.gitconfig ${HOME}/.gitconfig
	ln -s ${PWD}/git/.gitignore ${HOME}/.gitignore

vim :
	-@ unlink ${HOME}/.vim/vimrc
	ln -s ${PWD}/vim/vimrc ${HOME}/.vim/vimrc

nvim :
	-@ unlink ${HOME}/.config/nvim/init.vim
	ln -s ${PWD}/nvim/init.vim ${HOME}/.config/nvim/init.vim

vscode-mac :
	-@ unlink ${HOME}/Library/Application\ Support/Code/User/settings.json
	ln -sf ${PWD}/vscode/settings.json ${HOME}/Library/Application\ Support/Code/User/settings.json
