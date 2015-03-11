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
#xmodmap -e "keycode 134 = Pointer_Button3"
#xmodmap -e "keycode 108 = Pointer_Button2"
#xmodmap -e "keycode 212 = Delete"

# for MacBookPro 8,2 15"
#xmodmap -e "keycode 102 = Super_L"
#xmodmap -e "keycode 62 = Pointer_Button3"
#xmodmap -e "keycode 108 = Pointer_Button2"
#xmodmap -e "keycode 77 = Delete"

# for MacBookPro Mid 2012 13"
xmodmap -e "keycode 62 = Pointer_Button3"
xmodmap -e "keycode 49 = Pointer_Button2"

xkbset m
xkbset exp m

