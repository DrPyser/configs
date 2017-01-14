#!/bin/fish
setxkbmap -layout ca,en,ca(multix) -option caps:hyper terminate:ctrl_alt_bksp;
xrdb --merge ~/.Xresources;
# xmodmap $HOME/.Xmodmap;         
start-pulseaudio-x11;
i3;
