# startship init
starship init fish | source

# disable fish greeting
set fish_greeting

# shortcuts
alias ..="cd .. && ls -la"
alias 。。="cd .. && ls -la"
alias ...="cd ../.. && ls -la"
alias 。。。="cd ../.. && ls -la"
alias ....="cd ../../.. && ls -la"
alias 。。。。="cd ../../.. && ls -la"

# node
alias b="nr build"
alias d="nr dev"
alias i="ni"
alias p="nr preview"
alias s="nr start"
alias t="nr test"
alias tw="nr test --watch"
alias u="nu"
alias ul="nu --latest"

alias lint="nr lint"
alias lintf="nr lint --fix"

# git
alias ga="git add"
alias gaa="git add -A"
alias gb="git branch"
alias gbd="git branch -d"
alias gcl="git clone"
alias gco="git checkout"
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

alias main="git checkout main"

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

# pnpm
set -gx PNPM_HOME "/home/corn/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
