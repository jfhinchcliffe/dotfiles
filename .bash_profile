source /usr/local/opt/chruby/share/chruby/chruby.sh
source ~/scripts/gitcompletion.bash

eval "$(rbenv init -)"

# Colours: 
# https://unix.stackexchange.com/questions/269077/tput-setaf-color-table-how-to-determine-color-codes

GREEN="$(tput setaf 2)"
YELLOW="$(tput setaf 220)"
PURPLE="$(tput setaf 163)"
BLUE="$(tput setaf 033)"
DIRTY_ORANGE="$(tput setaf 136)"
CLEAN_GREEN="$(tput setaf 121)"
COOL_PINK="$(tput setaf 213)"

RESET="$(tput sgr0)"

# Change colours of git branch on terminal based on clean / dirty
function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* (*\([^)]*\))*/\1/'
}

function markup_git_branch {
  if [[ -n $@ ]]; then
    if [[ -z $(git status --porcelain 2> /dev/null | tail -n1) ]]; then
      echo -e " ${BLUE}Branch:${RESET} ${CLEAN_GREEN}($@)${RESET} ☀️ "
    else
      echo -e " ${BLUE}Branch:${RESET} ${DIRTY_ORANGE}($@)${RESET} ⛈️ "
    fi
  fi
}

export PS1="${BLUE}Dir:${RESET} ${COOL_PINK}\w${RESET}\$(markup_git_branch \$(git_branch)) \n \e => "

###########
# Aliases #
###########

alias ll="ls -lhA"
alias gotomp="cd ~/sites/rails/marketplacer/"

