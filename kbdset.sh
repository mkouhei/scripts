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

# for MacBook 8,2 15"
#xmodmap -e "keycode 62 = Pointer_Button3"
#xmodmap -e "keycode 108 = Pointer_Button2"

# for ThinkPad T470s US keyboard
# right shift
xmodmap -e "keycode 62 = Pointer_Button3"

# right PrintScreen
xmodmap -e "keycode 107 = Pointer_Button2"

# left alt
#xmodmap -e "keycode 64 = Meta_L"

# capslock
xmodmap -e "keycode 66 = Control_L NoSymbol Control_L"
xmodmap -e "clear lock"
xmodmap -e "add Control = Control_L"

xkbset m
xkbset exp m

