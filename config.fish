alias b="nr build"
alias d="nr dev"
alias i="ni"
alias s="nr start"
alias t="nr test"
alias tw="nr test --watch"
alias u="nu"

alias lint="nr lint"
alias lintf="nr lint --fix"

alias forks="cd /home/corn/dev/forks"
alias pros="cd /home/corn/dev/projects"

# pnpm
set -gx PNPM_HOME "/home/corn/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

starship init fish | source
