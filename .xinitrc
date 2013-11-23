# load fonts
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/artwiz-fonts
xset +fp /usr/share/fonts/TTF
xset +fp /usr/share/fonts/misc
xset +fp /usr/share/fonts/microsoft
xset fp rehash

# enable restart X
setxkbmap -option terminate:ctrl_alt_bksp &

# set wallpaper
sh ~/.fehbg &

# run conky
conky -c ~/bin/conkybar &

# load .Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# start WM
sxhkd &
exec bspwm

