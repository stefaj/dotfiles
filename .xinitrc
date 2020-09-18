xrdb -merge ~/.Xresources
exec i3
#compton --vsync opengl
#sxhkd &
#exec bspwm
#compton --focus-exclude "x = 0 && y = 0 && override_redirect = true" --vsync-aggressive 
#unclutter --timeout 2
systemctl --user import-environment DISPLAY

