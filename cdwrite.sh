#!/bin/bash

test -z $1 && exit 1
ISOIMAGE=$1

wodim -v dev='/dev/cdrom' speed=10 $ISOIMAGE

if [ "$?" -eq 0 ];
then
	mount /dev/dvd
	ls /media/cdrom
	umount /media/cdrom0
fi

eject cdrom

exit 0
