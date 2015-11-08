#!/bin/bash
MYKEY="0x7E37CE41"
KEYSERVER=pgp.mit.edu
#KEYSERVER=pgp.nic.ad.jp

test -z $1 && exit 1
test ! -f $1 && exit 2

KEYFILE=$1

if file $KEYFILE | egrep -q "PGP public key block"
then
	gpg --import $KEYFILE
	gpg --keyserver $KEYSERVER --send-keys $MYKEY
fi

exit 0
