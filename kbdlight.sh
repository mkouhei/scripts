#!/bin/sh

# for MacBook Air

VAL=0

case "$1" in
	on)
	VAL=255
	;;
	off)
	VAL=0
	;;
	*)
	echo "Usage: $0 {on|off}"
	exit 1
	;;
esac

sudo bash -c "echo $VAL > /sys/class/leds/smc\:\:kbd_backlight/brightness"

exit 0
