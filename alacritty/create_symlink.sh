#!/bin/bash

echo "Make alacritty symlink"
cd $HOME/.config
mkdir alacritty
touch alacritty.yml
sudo ln -snf $HOME/dotfiles/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml
echo "Ending"
