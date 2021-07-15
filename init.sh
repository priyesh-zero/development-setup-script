#!/bin/bash

# Update Package List
sudo pacman -Syyy

# Update all the packages
sudo pacman -Syu

# Install curl
sudo pacman -S curl

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

echo "[Warning] This script uses nvm v0.38.0. Check https://github.com/nvm-sh/nvm for current version and update if necessary"

# Appending nvm info at the end of the .zsh file
echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc

# Resource .zsh
source ~/.zshrc

# Install node using nvm
nvm install node

# Use node installed
nvm use node

# Install yarn
 npm install -g yarn

# Installing git 
sudo pacman -S git

# Installing Tmux

# Installing using pacman
sudo pacman -S tmux

# Cloning Tmux config
git clone https://github.com/priyesh-zero/tmux-config.git ~/.configs/tmux

# Creating a symlink to the config
cd ~ && ln -s ~/.configs/tmux/.tmux.conf

# Cloning Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.configs/tmux/plugins/tpm

# Installing neovim

# Installing neovim using pacman
sudo pacman -S neovim

# Cloning nvim
git clone https://priyesh-zero@github.com/priyesh-zero/nvim-config.git ~/.config/nvim

# Installing neovim npm package globally
 yarn global add neovim

# Install python neovim client
sudo pacman -S python-pynvim

# Installing Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim

# Install all Vundle packages
nvim +PluginInstall +qall

# Install Coc packages
nvim +'CocInstall coc-angular coc-css coc-emmet coc-explorer coc-fzf-preview coc-graphql coc-highlight coc-html coc-json coc-prisma coc-snippets coc-tsserver coc-vetur coc-vimlsp coc-yaml coc-yank coc-prettier coc-spell-check'

