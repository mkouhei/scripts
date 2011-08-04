#!/bin/bash 

SKYPE_DIR=~/download/skype_static-2.2.0.35
CMD=skype

case "$1" in
start)
${SKYPE_DIR}/${CMD} &
;;

stop)
pkill $CMD
;;

*)
echo "Usage $0 {start|stop}"
exit 1
;;
esac

exit 0



