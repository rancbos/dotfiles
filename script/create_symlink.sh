#!/bin/bash

echo "Make bashrc symlink"
sudo ln -snf $HOME/dotfiles/etc/bashrc $HOME/.bashrc
echo "Ending"

echo "Make profile symlink"
sudo ln -snf $HOME/dotfiles/etc/profile $HOME/.profile
echo "Ending"

echo "Make xinitrc symlink"
sudo ln -snf $HOME/dotfiles/etc/xinitrc $HOME/.xinitrc
echo "Ending"

echo "Make Xmodmap symlink"
sudo ln -snf $HOME/dotfiles/etc/Xmodmap $HOME/.Xmodmap
echo "Ending"

echo "Make xprofile symlink"
sudo ln -snf $HOME/dotfiles/etc/xprofile $HOME/.xprofile
echo "Ending"







echo "Make nvim symlink"
sudo ln -snf $HOME/dotfiles/nvim/init.vim $HOME/.config/nvim/init.vim
echo "Ending"

echo "Make alacritty symlink"
sudo ln -snf $HOME/dotfiles/alacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml
echo "Ending"

echo "Make bspwm symlink"
sudo ln -snf $HOME/dotfiles/bspwm/bspwmrc $HOME/.config/bspwm/bspwmrc
echo "Ending"

echo "Make sxhkd symlink"
sudo ln -snf $HOME/dotfiles/sxhkd/sxhkdrc $HOME/.config/sxhkd/sxhkdrc
echo "Ending"

echo "Make neofetch symlink"
sudo ln -snf $HOME/dotfiles/neofetch/config.conf $HOME/.config/neofetch/config.conf
echo "Ending"

echo "Make picom symlink"
sudo ln -snf $HOME/dotfiles/picom/picom.conf $HOME/.config/picom/picom.conf
echo "Ending"

echo "Make rofi symlink"
sudo ln -snf $HOME/dotfiles/rofi/config $HOME/.config/rofi/config
echo "Ending"


echo "Make lazygit symlink"
sudo ln -snf $HOME/dotfiles/lazygit/config.yml $HOME/.config/jesseduffield/lazygit/config.yml
echo "Ending"


echo "Make zsh symlink"
sudo ln -snf $HOME/dotfiles/zsh/zshrc $HOME/.zshrc
echo "Ending"


echo "Make ranger symlink"
sudo ln -snf $HOME/dotfiles/ranger/plugins $HOME/.config/ranger/plugins
sudo ln -snf $HOME/dotfiles/ranger/commands.py $HOME/.config/ranger/commands.py
sudo ln -snf $HOME/dotfiles/ranger/rc.conf $HOME/.config/ranger/rc.conf
sudo ln -snf $HOME/dotfiles/ranger/rifle.conf $HOME/.config/ranger/rifle.conf
sudo ln -snf $HOME/dotfiles/ranger/scope.sh $HOME/.config/ranger/scope.sh
echo "Ending"
