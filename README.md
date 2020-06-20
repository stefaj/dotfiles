
# i3 configuration for arch linux

## Install dependencies

```
pacman -S i3-gaps dmenu feh rxvt-unicode ttf-droid ttf-hack git gcc
```

## Installation notes

`.Xresources` goes to `~/.Xresources`

Make sure `xrdb -merge ~/.Xresources` is above `exec i3` in `~\.xinitrc`

`.i3/config` goes to `~/.i3/config`

`wallpaper.jpg` of your choice goes to `~/wallpaper.jpg`

