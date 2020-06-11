#!/bin/bash
DOTFILES_DIR="$HOME/.dotfiles"
echo "[*] Setting up dot files"

VIM_CONFIG=".vimrc"
ln -s -f $DOTFILES_DIR/$VIM_CONFIG $HOME/$VIM_CONFIG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p $HOME/.vim/swapfiles

TMUX_CONFIG=".tmux.conf"
ln -s -f $DOTFILES_DIR/$TMUX_CONFIG $HOME/$TMUX_CONFIG
