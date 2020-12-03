#!/bin/bash

echo "Make nvim symlink"
cd ~/.config
mkdir nvim
cd nvim
touch init.vim
sudo ln -snf $HOME/dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim
echo "Ending"
