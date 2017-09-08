source /usr/local/opt/chruby/share/chruby/chruby.sh

source ~/scripts/gitcompletion.bash

eval "$(rbenv init -)"

function gotomp
{
  cd ~/sites/rails/marketplacer/
}

#Colours: https://unix.stackexchange.com/questions/269077/tput-setaf-color-table-how-to-determine-color-codes

GREEN="$(tput setaf 2)"
YELLOW="$(tput setaf 220)"
PURPLE="$(tput setaf 163)"
RESET="$(tput sgr0)"

function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* (*\([^)]*\))*/\1/'
}

function markup_git_branch {
  if [[ -n $@ ]]; then
    if [[ -z $(git status --porcelain 2> /dev/null | tail -n1) ]]; then
      echo -e " ${YELLOW}Branch:${RESET} \001\033[32m\002($@)\001\033[0m\002"
    else
      echo -e " ${YELLOW}Branch:${RESET}\001\033[31m\002($@)\001\033[0m\002"
    fi
  fi
}

export PS1="${PURPLE}Dir:${RESET} \W\$(markup_git_branch \$(git_branch)) \n \e => "

###########
# Aliases #
###########

alias ll="ls -lhA"
