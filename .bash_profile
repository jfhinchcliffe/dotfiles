source ~/scripts/gitcompletion.bash

eval "$(rbenv init -)"

function gotomp
{
    cd ~/sites/rails/marketplacer/
}

export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[32m\]\w -\$(parse_git_branch)\[\033[00m\] $ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

###########
# Aliases #
###########

alias ll="ls -lhA"
