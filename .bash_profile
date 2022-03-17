parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\e[0;32m\h:\e[0;36m\w\e[0;33m\$(parse_git_branch) \e[m\n $ "

export CLICOLOR=1
export LSCOLORS=ExGxCxDxBxegedabagacad

alias ll='ls -lG'


cat ~/.wave

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

test -r /sw/bin/init.sh && . /sw/bin/init.sh

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

. "$HOME/.cargo/env"

source /Users/trevorcoleman/.config/broot/launcher/bash/br
