#!/bin/bash
# Aliases

# Go to Fresh directory to update files
alias edit_dotfiles= "cd ~/.dotfiles && code ."
# re-source from fresh after updating dotfiles
alias refresh_dotfiles="source ~/.fresh/build/shell.sh"

# Work specific
alias get_to_work="gotomp && bash ~/custom_scripts/start_me_up.sh"
## Oft used projects
alias gotomp="cd ~/Sites/marketplacer"
alias gotoint="cd ~/Sites/integrations"
alias gotocerb="cd ~/Sites/cerberus"
## When my work repo has that... not so fresh feeling

# Ruby specific
alias be="bundle exec"

# Git
alias gwip="git add -A && OVERCOMMIT_DISABLE=1 git commit -m 'wip commit'"

# test
alias xxx="echo NewStringWorks!"