#!/bin/bash


setxkbmap

# for MacBook Air 1st
#xmodmap -e "keycode 134 = Pointer_Button3"
#xmodmap -e "keycode 108 = Pointer_Button2"
#xmodmap -e "keycode 212 = Delete"

# for MacBook 5,2 white
#xmodmap -e "keycode 116 = Pointer_Button3"
#xmodmap -e "keycode 113 = Pointer_Button2"
#xmodmap -e "keycode 173 = Delete"

# for MacBook 5,2 white 2010.05.03.
xmodmap -e "keycode 134 = Pointer_Button3"
xmodmap -e "keycode 108 = Pointer_Button2"
xmodmap -e "keycode 212 = Delete"

xkbset m
xkbset exp m

