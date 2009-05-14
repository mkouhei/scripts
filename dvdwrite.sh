#!/bin/bash

test -z $1 && exit 1
ISOIMAGE=$1

if growisofs -dry-run -dvd-compat -Z /dev/scd0=$ISOIMAGE 
then
	growisofs -dvd-compat -Z /dev/scd0=$ISOIMAGE
fi

if [ "$?" -eq 0 ];
then
	mount /dev/dvd
	ls /media/cdrom
	umount /media/cdrom0
fi

eject dvd

exit 0
