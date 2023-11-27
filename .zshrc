eval "$(starship init zsh)"

export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-z
)

alias b="nr build"
alias i="ni"
alias s="nr start"
alias d="nr dev"
alias t="nr test"
alias u="nu --latest"
alias lint="nr lint"
alias lintf="nr lintf"

function p() {
  cd ~/dev/projects/$1
}

function f() {
  cd ~/dev/forks/$1
}

function dir() {
  mkdir $1 && cd &1
}

# fnm
export PATH="/home/corn/.local/share/fnm:$PATH"
eval "`fnm env`"

# pnpm
export PNPM_HOME="/home/corn/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
