#!/bin/bash

cd ~
mkdir ~/tmp44
cd tmp44
sudo pacman -S wget
cd ~/Downloads
wget https://aur.archlinux.org/cgit/aur.git/snapshot/packer.tar.gz
tar -xvf packer.tar.gz
cd packer
makepkg -sri
# i3 and urxvt and zsh
sudo pacman -S i3 feh rxvt-unicode ttf-droid terminus-font compton zsh-syntax-highlighting zsh
# i3 gaps
packer -S i3-gaps-git dmenu2 powerline-fonts-git unclutter-xfixes-git
# Pathogfen
packer -S vim-pathogen
# Vundle
git clone https://github.com/gmarik/Vundle.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

