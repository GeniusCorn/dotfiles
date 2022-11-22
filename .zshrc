fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="minimal"

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	)

source $ZSH/oh-my-zsh.sh

# cd to projects directory
alias cdp="cd projects && ls"

# vsc
alias c="code"
# vsc end

# Node Package Manager
alias b="nr build"
alias d="nr dev"
alias s="nr start"
alias t="nr test"
alias u="nu"
alias t="nr test"
alias i="ni"
alias tw="nr test --watch"

# pnpm
export PNPM_HOME="/home/corn/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# wsl2 proxy
export hostip=$(cat /etc/resolv.conf | grep -oP '(?<=nameserver\ ).*')
export all_proxy=http://$hostip:7890
# wsl2 proxy end

# npm proxy
npm config set proxy http://$hostip:7890
# npm proxy end

# Enable starship
eval "$(starship init zsh)"
