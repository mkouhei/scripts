#!/bin/bash

tripwire -m c
REPORT1=`ls /var/lib/tripwire/report/${HOSTNAME}-????????-??????.twr | tail -1`
#ls -l $REPORT1
tripwire -m u -c /etc/tripwire/tw.cfg -p /etc/tripwire/tw.pol -r $REPORT1

tripwire -m c
REPORT2=`ls /var/lib/tripwire/report/${HOSTNAME}-????????-??????.twr | tail -1`
twprint -m r -c /etc/tripwire/tw.cfg -r $REPORT2 -t 4 | more

