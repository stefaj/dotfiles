# i3config
i3 configuration

## Install script

Install necessary apps

```
pacman -S i3-gaps dmenu feh rxvt-unicode ttf-droid gcc ttf-hack git
```
---


## Installation notes

`.Xresources` goes to `~/.Xresources`

Make sure `xrdb -merge ~/.Xresources` is above `exec i3` in `~\.xinitrc`

`config` goes to `~/.i3/config`

