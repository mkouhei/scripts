#!/bin/bash
# ver 0.2 2007-10-12 added defconfig

REVISION=$(date +%Y%m%d.%H%M)

case "$1" in
'oldconfig')
	sudo make-kpkg --rootcmd fakeroot clean
	time make-kpkg --rootcmd fakeroot --config oldconfig  --initrd --revision=$REVISION kernel-image kernel_headers modules_image
	;;
'menuconfig')
	sudo make-kpkg --rootcmd fakeroot clean
	time make-kpkg --rootcmd fakeroot --config menuconfig --initrd --revision=$REVISION kernel-image kernel_headers modules_image
	#time make-kpkg --rootcmd fakeroot --config menuconfig --revision=$REVISION configure
	#time make-kpkg --rootcmd fakeroot --initrd --revision=$REVISION kernel-image kernel_headers modules_image
	;;
'defconfig')
	sudo make-kpkg --rootcmd fakeroot clean
	time make-kpkg --rootcmd fakeroot --config defconfig  --initrd --revision=$REVISION kernel-image kernel_headers modules_image
	;;
*)
	echo "Usage: $0 [oldconfig|menuconfig]"
	;;
esac

exit 0
