#!/bin/bash





mkdir ~/.i3/
mkdir -p ~/.config
ln -s "$PWD/.config/dunst" ~/.config/dunst
ln -s "$PWD/config" ~/.i3/config
ln -s "$PWD/wallpaper.jpg" ~/wallpaper.jpg
ln -s "$PWD/.vimrc" ~/.vimrc
ln -s "$PWD/.zshrc" ~/.zshrc
ln -s "$PWD/.Xresources" ~/.Xresources
ln -s "$PWD/.xinitrc" ~/.xinitrc

ln -s "$PWD/.fonts" ~/.fonts
ln -s "$PWD/.vim" ~/.vim

xset fp+ $HOME/.fonts/misc
xset fp+ $HOME/.fonts/ohsnap
xset fp+ $HOME/.fonts/terminesspowerline
fc-cache -vf
