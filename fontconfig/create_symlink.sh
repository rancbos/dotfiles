#!/bin/bash

echo "Make fontconfig symlink"
sudo ln -snf $HOME/dotfiles/fontconfig/fonts.conf $HOME/.config/fontconfig/fonts.conf
echo "Ending"
