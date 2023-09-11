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

backup-karabiner:
	cp ~/.config/karabiner/karabiner.json karabiner.json

restore-karabiner:
	cp karabiner.json ~/.config/karabiner/karabiner.json


