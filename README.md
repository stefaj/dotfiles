# Dot Files
Dot Files - i3 config and vim

*Preview:*
![Screenshot](screenshot.png "Screenshot")


## Installing
When cloning this repository, do:
```
git clone https://github.com/stefan-j/dotfiles --recursive
```
in order to pull the vim plugin git submodules.

There is an install script one can use, that creates symlinks to the files in this repo.
```
./install.sh
```
If you are on **Arch Linux**, then prior to the above do:
```
./arch.sh
```
in order to install the required packages.


If you are on **NixOs**, then see this [repo](https://github.com/stefan-j/NixOs) for the required packages.

The install script `./install.sh` creates symlinks for the various dot files contained in this repository, for example, it symlinks `~./vim` to `./vim` contained within.

## Requirements
The requirements will be automatically installed on Arch Linux with `./install.sh`. If you are on a different distribution, you will require the following packages.

* I3 with gaps - [Mandatory github repo link](https://github.com/Airblader/i3)
* VIM
* Terminus font
* Compton
* Z-shell
* FEH
* ALSA utils (keybindings in i3 config uses this to adjust volume)
* Dmenu2 - [on Bitbucket](https://bitbucket.org/melek/dmenu2)
* Powerline fonts

## Manual Mode (Arch)
If don't get enough dopamine flowing by running a simple install script you can manually install the required packages with the following steps:

## Packer

Installing packer

```
sudo pacman -S wget
cd ~/Downloads
wget https://aur.archlinux.org/cgit/aur.git/snapshot/packer.tar.gz
tar -xvf packer.tar.gz
cd packer
makepkg -sri
```

## I3
i3 configuration
### Install

# i3 configuration for arch linux

## Install dependencies

```
pacman -S i3 feh rxvt-unicode ttf-droid terminus-font compton zsh-syntax-highlighting zsh
```

Install i3-gaps, dmenu2 and some fonts

```
packer -S i3-gaps-git dmenu2 powerline-fonts-git unclutter-xfixes-git
```

---


### Installation notes
pacman -S i3-gaps dmenu feh rxvt-unicode ttf-droid ttf-hack git gcc
```

## Installation notes

`.Xresources` goes to `~/.Xresources`

```
xrdb -merge ~/.Xresources
```

Make sure `xrdb -merge ~/.Xresources` is above `exec i3` in `~/.xinitrc`


`.i3/config` goes to `~/.i3/config`


Copy the .fonts to ~/.fonts/
then 
```
xset fp+ $HOME/.fonts/misc
xset fp+ $HOME/.fonts/ohsnap
xset fp+ $HOME/.fonts/terminesspowerline
fc-cache -vf
```

## VIM and haskell
*Only if you did not pull the submodules with* `--recursive`, see note at end.

Install plugin manager vundle:
```
git clone https://github.com/gmarik/Vundle.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

Install pathogen (optional):
```
packer -S vim-pathogen
```
`wallpaper.jpg` of your choice goes to `~/wallpaper.jpg`

Install VIM themes and tools:
```
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
```

Install haskell plugins:
```
cd ~/.vim/bundle
git clone https://github.com/eagletmt/ghcmod-vim.git
git clone https://github.com/eagletmt/neco-ghc
cabal install ghc-mod hlint
```

**NOTE:**

If you did
```
git clone https://github.com/stefan-j/dotfiles --recursive
```
and you symlinked the `.vim` directory (or used `./install.sh`) then you don't need to do the above, as the directory already contains the vim plugins as git submodules. 
