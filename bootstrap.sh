#!/bin/zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ZSH
ln -sfn ~/dotfiles/zsh ~/.zsh
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc

# Git
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
ln -sf ~/dotfiles/git/gitignore_global ~/.gitignore_global

source ~/.zshrc