#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"
echo "[*] Setting up dot files"

I3_CONFIG=".config/i3/config"
ln -s $DOTFILES_DIR/$I3_CONFIG $HOME/$I3_CONFIG

VIM_CONFIG=".vimrc"
ln -s $DOTFILES_DIR/$VIM_CONFIG $HOME/$VIM_CONFIG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p $HOME/.vim/swapfiles

TERMITE_CONFIG=".config/termite/config"
ln -s $DOTFILES_DIR/$TERMITE_CONFIG $HOME/$TERMITE_CONFIG
