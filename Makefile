# tmux
backup-tmux:
	cp ~/.tmux.conf .tmux.conf
restore-tmux:
	cp .tmux.conf ~/.tmux.conf

# zsh
backup-zshrc:
	cp ~/.zshrc .zshrc
restore-zshrc:
	cp .zshrc ~/.zshrc

# git
backup-gitconfig:
  cp ~/.gitconfig .gitconfig
restore-gitconfig:
	cp .gitconfig ~/.gitconfig
