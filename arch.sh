#!/bin/bash
echo "Awesome Arch Architectural Appointer"
cd ~
mkdir ~/tmp44
cd tmp44
sudo pacman -S wget
sudo pacman -S dunst
cd ~/Downloads
wget https://aur.archlinux.org/cgit/aur.git/snapshot/packer.tar.gz
tar -xvf packer.tar.gz
cd packer
makepkg -sri
# Cabal
echo "Installing cabal"
# i3 and urxvt and zsh
echo "Installing a kickass terminal"
sudo pacman -S i3 feh rxvt-unicode ttf-droid terminus-font compton zsh-syntax-highlighting zsh
# i3 gaps
echo "Randomizing"
echo "Installing some random window manager"
packer -S i3-gaps-git dmenu2 powerline-fonts-git unclutter-xfixes-git
# Pathogfen
echo "Installing some vim stuff"
packer -S vim-pathogen
# Vundle
git clone https://github.com/gmarik/Vundle.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
# Vim
mkdir ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/kristijanhusak/vim-hybrid-material
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/godlygeek/tabular.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/Shougo/neocomplete.vim.git
git clone https://github.com/Shougo/vimproc.vim.git
cd vimproc.vim
make
