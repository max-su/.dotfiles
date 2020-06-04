#!/bin/bash
DOTFILES_DIR="$HOME/.dotfiles"
echo "[*] Setting up dot files"

I3_CONFIG=".config/i3/config"
ln -s -f $DOTFILES_DIR/$I3_CONFIG $HOME/$I3_CONFIG

VIM_CONFIG=".vimrc"
ln -s -f $DOTFILES_DIR/$VIM_CONFIG $HOME/$VIM_CONFIG
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p $HOME/.vim/swapfiles

TERMITE_CONFIG=".config/termite/config"
ln -s -f $DOTFILES_DIR/$TERMITE_CONFIG $HOME/$TERMITE_CONFIG

TMUX_CONFIG=".tmux.conf"
ln -s -f $DOTFILES_DIR/$TMUX_CONFIG $HOME/$TMUX_CONFIG

ZSH_CONFIG=".zshrc"
ln -s -f $DOTFILES_DIR/$ZSH_CONFIG $HOME/$ZSH_CONFIG
P10K_ZSH_CONFIG=".p10k.zsh"
ln -s -f $DOTFILES_DIR/$P10K_ZSH_CONFIG $HOME/$P10K_ZSH_CONFIG
