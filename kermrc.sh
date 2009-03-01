#!/bin/bash

case "$1" in
	ar)
	ln -sf ~/.kermrc-ar ~/.kermrc
	;;
	oms)
	ln -sf ~/.kermrc-oms ~/.kermrc
	;;
	base)
	ln -sf ~/.kermrc-base ~/.kermrc
	;;
	*)
	echo "Usage: $0 {ar|oms|base}"
	exit 1
	;;
esac

exit 0
