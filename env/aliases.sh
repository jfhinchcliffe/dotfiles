# Aliases

# re-source from fresh after updating dotfiles
alias refresh_dotfiles="source ~/.fresh/build/shell.sh"

# Work specific
alias get_to_work="gotomp && bash ~/custom_scripts/start_me_up.sh $1"
## Oft used projects
alias gotomp="cd ~/Sites/marketplacer"
alias gotoint="cd ~/Sites/integrations"
alias gotoket="cd ~/Sites/ketplacer"
## When my work repo has that... not so fresh feeling
alias clean_git="echo 🌱 Cleaning Git 🌱 && git checkout main && git pull && git fetch --prune"
alias clean_js="echo 📗 Cleaning JS 📗 && rm -rf node_modules && nvm use 10.16 && yarn"
alias clean_ruby="echo 💎 Cleaning Ruby 💎 && bundle install"
alias refreshmp="echo 💖 Refreshing everything! 💖 && gotomp && clean_git && clean_js && clean_ruby && echo 🏁 Done! You may need to restart Node / Rails / Docker 🏁"

# Ruby specific
alias be="bundle exec"

# Git
alias gwip="git add -A && OVERCOMMIT_DISABLE=1 git commit -m 'wip commit'"

# test
alias xxx="echo poopxxxsss"