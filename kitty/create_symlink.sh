#!/bin/bash

echo "Make Kitty symlink"
cd ~/.config
mkdir kitty
cd 
sudo ln -snf $HOME/dotfiles/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
echo "Ending"



