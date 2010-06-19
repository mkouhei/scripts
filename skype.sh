#!/bin/bash 

SKYPE_DIR=~/download/skype_static-2.1.0.81
CMD=skype

case "$1" in
start)
sudo chmod a-r /usr/lib32/libpulse{-simple.so.0.0.2,.so.0.8.0,common-0.9.15.so}
${SKYPE_DIR}/${CMD} &
;;

stop)
sudo chmod a+r /usr/lib32/libpulse{-simple.so.0.0.2,.so.0.8.0,common-0.9.15.so}
pkill $CMD
;;

*)
echo "Usage $0 {start|stop}"
exit 1
;;
esac

exit 0



