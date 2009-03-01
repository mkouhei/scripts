#!/bin/bash
#
# NAME:
#    ssh-login
#
# DESCRIPTION:
#    The log of the shell input in ssh and standard output is taken.
#    
# CHANGELOG:
#    2006-02-24  Kouhei <mkohei at palmtb.net>
#            * Original is created.    
#
test ! -z $1 || exit 2

TARGET=$1
DATE=`/bin/date  +%Y%m%d-%H%M%S`
LOG=${TARGET}_${DATE}.log
test ! -d ~/log && mkdir ~/log

/usr/bin/ssh -2 $TARGET | /usr/bin/tee ~/log/$LOG
