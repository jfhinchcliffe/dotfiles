
#!/bin/bash
#source ~/.fresh/build/shell.sh
echo "Giddy up!"
# Removing local .zshrc, installing Fresh, and then linking .freshrc to my prebaked one
rm ~/.zshrc
bash -c "`curl -sL get.freshshell.com`"
# rm ~/.freshrc
ln -s ~/dotfiles/.freshrc ~/.freshrc

fresh env/aliases.sh