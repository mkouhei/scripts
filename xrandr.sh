#!/bin/bash

case "$1" in

start)
	#xrandr --output "LVDS" --mode 1280x800 --output "VGA" --mode 1280x800
	xrandr --output "LVDS" --mode 1280x800 --output "VGA0" --mode 1024x768
	;;
stop)
	xrandr --output "LVDS" --mode 1280x800 --output "VGA0" --off
	;;
status)
	xrandr
	;;

*)
	echo "Usage; $0 {start|stop|status}"
	exit 1
	;;
esac

exit 0
