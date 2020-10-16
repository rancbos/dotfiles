#!/bin/bash

echo "Make nvim symlink"
sudo ln -snf $HOME/dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim
