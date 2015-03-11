#!/bin/bash

case "$1" in

start)
	#xrandr --output "LVDS" --mode 1280x800 --output "VGA" --mode 1280x800
	xrandr --output "VBOX1" --mode 1920x1080 --above "VBOX0" --output "VBOX0" --mode 1440x900
	;;
stop)
	xrandr --output "VBOX1" --mode 1440x900 --output "VBOX0" --off
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
