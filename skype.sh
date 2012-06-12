#!/bin/bash 

SKYPE_DIR=~/download/skype
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



