#!/bin/bash

# for MacBook Air

setxkbmap
#xmodmap -e "keycode 116 = Pointer_Button3"
xmodmap -e "keycode 134 = Pointer_Button3"
#xmodmap -e "keycode 113 = Pointer_Button2"
xmodmap -e "keycode 108 = Pointer_Button2"
#xmodmap -e "keycode 204 = Delete"
xmodmap -e "keycode 212 = Delete"
xkbset m
xkbset exp m

