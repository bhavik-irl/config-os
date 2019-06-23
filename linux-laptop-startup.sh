xinput --set-prop "Logitech M570" "libinput Accel Speed" -0.9 
#/usr/bin/setxkbmap -option "ctrl:nocaps"
#/usr/bin/setxkbmap -option altwin:swap_alt_win
xgamma -gamma .9
synclient VertScrollDelta=-58
synclient HorizScrollDelta=-58
compton
xmodmap ~/.Xmodmap