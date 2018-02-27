# User specific aliases and functions
force_color_prompt=yes

function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

NO_COLOR="\[\033[0m\]"
BLACK="\[\033[0;30m\]"
RED="\[\033[0;31m\]"
LIGHTRED="\[\033[0;91m\]"
GREEN="\[\033[0;32m\]"
LIGHTGREEN="\[\033[0;92m\]"
YELLOW="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
WHITE="\[\033[0;37m\]"
LIGHTYELLOW="\[\033[0;93m\]"
MAGENTA="\[\033[0;95m\]"

PS1="$RED[$GREEN\u$RED]$NO_COLOR \w \n$YELLOW\$(parse_git_branch)$RED \$ $NO_COLOR"

# export CDPATH=".:~:~/workspace:/workspace"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

alias grep="grep --color"
alias ls="ls -hF --color=tty"
alias ll="ls -l"
alias la="ls -A"

alias dev="cd /c/ambiente"