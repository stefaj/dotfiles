# i3config
My personal i3 configuration

## Install script

Install necessary apps

```
pacman -S i3 conky feh rxvt-unicode ttf-droid terminus-font perl-anyevent-i3 0.16-2 
```

```
yaourt -S dmenu2 lemonbar powerline-fonts-git python-i3-git
```

---


## Installation notes

`.Xresources` goes to `~/.Xresources`
```
xrdb -merge ~/.Xresources`
```

`.conkyrc` goes to `~/.conkyrc`

`config` goes to `~/.i3/config`

`zixpk.jpg` can go to the home directory `~/zixpk.jpg`
Just update the path as necessary in `~/.i3/config`


Copy the .fonts to ~/.fonts/
then 
```
xset fp+ $HOME/.fonts/misc
xset fp+ $HOME/.fonts/ohsnap
xset fp+ $HOME/.fonts/terminesspowerline
```

Install vim plugins
```
$ git clone https://github.com/gmarik/Vundle.git ~/.vim/bundle/Vundle.vim
$ vim +PluginInstall +qall
```

