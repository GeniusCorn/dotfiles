# startship
starship init fish | source

# disable fish greeting
set fish_greeting

# mise
mise activate fish | source

# fzf
# fzf --fish | source

# shortcuts
alias ..="cd .. && ll"
alias 。。="cd .. && ll"
alias ...="cd ../.. && ll"
alias 。。。="cd ../.. && ll"
alias ....="cd ../../.. && ll"
alias 。。。。="cd ../../.. && ll"
alias bat=batcat
alias c=clear

# eza aliases
alias ls='eza --group-directories-first --icons'
alias la='eza -a --group-directories-first --icons'
alias l='eza -l --group-directories-first --icons'
alias ll='eza -la --group-directories-first --icons'

# node
alias b="nr build"
alias d="nr dev"
alias i="ni"
alias io="ni --prefer-offline"
alias p="nr preview"
alias s="nr start"
alias t="nr test"
alias tw="nr test --watch"
alias u="nu"
alias ul="nu --latest"

alias lint="nr lint"
alias lintf="nr lint --fix"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# git
alias ga="git add"
alias gaa="git add -A"
alias gb="git branch"
alias gbd="git branch -d"
alias gcl="git clone"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gc="git commit"
alias gca="git commit -a"
alias gcm="git commit -m"
alias gl="git log"
alias glo="git log --oneline --graph"
alias gp="git push"
alias gpf="git push --force"
alias gpl="git pull --rebase"
alias gs="git status"
alias gst="git stash"

alias grb='git rebase'
alias grbom='git rebase origin/main'
alias grbc='git rebase --continue'

alias main="git checkout main"

# fd alias
alias fd="fdfind"

# chezomi
alias czpush="chezmoi git -- add -A && chezmoi git -- commit -m update && chezmoi push"

function gtr
  cd (git rev-parse --show-toplevel)
end

# code
function pros
  cd /home/corn/dev/projects

  ls -la
end

function forks
  cd /home/corn/dev/forks

  ls -la
end

function clonep
  set -l repo_url $argv[1]
  set -l dir /home/corn/dev/projects
  set -l project_name (basename $repo_url .git)

  echo "Project name: $project_name"

  cd $dir
  git clone $repo_url
  cd $project_name
  code .
end

function clonef
  set -l repo_url $argv[1]
  set -l dir /home/corn/dev/forks
  set -l project_name (basename $repo_url .git)

  cd $dir
  git clone $repo_url
  cd $project_name
  code .
end

function update-all
  sudo apt update && sudo apt upgrade && sudo apt dist-upgrade
end

set -gx BAT_THEME "Catppuccin Mocha"

set -gx NI_DEFAULT_AGENT pnpm
set -gx NI_GLOBAL_AGENT pnpm
set -gx NI_CATALOG true

# zoxide
set -gx PATH /home/corn/.local/bin $PATH
zoxide init fish | source

if status is-interactive
    atuin init fish | source
end
