fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="eastwood"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh

# cd to projects directory
alias cdp="cd d:/projects && ls"

# Visual Studio Code

alias c="code"

# Node Package Manager

alias b="nr build"
alias d="nr dev"
alias s="nr start"
alias t="nr test"
alias u="nu"
alias t="nr test"
alias tw="nr test --watch"

# Git

alias ga="git add"
alias gaa="git add -A"

alias gb="git branch"
alias gbd="git branch -d"

alias gc="git commit"
alias gcm="git commit -m"
alias gca="git commit -a"
alias gcam="git add -A && git commit -m"

alias gcl="git clone"

alias gst="git stash"

alias grm="git rm"

alias grb="git rebase"

alias gmv="git mv"

alias gl="git log"

alias gs="git status"

alias gp="git push"
alias gpf="git push --force"

alias gpl="git pull --rebase"