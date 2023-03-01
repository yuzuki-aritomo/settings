
# PATH
export PATH=/opt/homebrew/bin:$PATH

# anyenv
eval "$(anyenv init -)"


####### oh my zsh #######

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-completions
  zsh-autosuggestions
  zsh-history-substring-search
  zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

##### p10k ######
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

####### pwco setting #######

bindkey '^]' peco-src
function peco-src(){
	local src=$(ghq list --full-path|peco --query "$LBUFFER")
	if [ -n "$src" ]; then
		BUFFER="cd $src"
		zle accept-line
	fi
	zle -R -c
}
zle -N peco-src

####### alias #######

# git
alias g='git'
alias gcm='git commit -m'
alias gc='git checkout'
alias gl='git pull origin'
alias gp='git push origin'
alias gcpr='gh pr checkout $(gh pr list | peco | cut -f 1)'

# git checkout lb, serch peco
alias -g lb='`git branch | peco --prompt "GIT BRANCH>" | head -n 1 | sed -e "s/^\*\s*//g"`'

# docker
alias d='docker'
alias dc='docker compose'
alias dcu='docker compose up -d'


source /Users/yuzuki/.docker/init-zsh.sh || true # Added by Docker Desktop


