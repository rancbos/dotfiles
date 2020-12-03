#!/bin/bash

echo "Make Xmodmap symlink"
sudo ln -snf $HOME/dotfiles/etc/Xmodmap $HOME/.Xmodmap
echo "Ending"

echo "Make xprofile symlink"
sudo ln -snf $HOME/dotfiles/etc/xprofile $HOME/.xprofile
echo "Ending"


