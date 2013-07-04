#!/bin/bash
MYKEY="0x7E37CE41"
#KEYSERVER="18.92.0.144"
KEYSERVER="202.12.30.53"

test -z $1 && exit 1
test ! -f $1 && exit 2

KEYFILE=$1

#if file $KEYFILE | egrep -q "PGP message"
#then
#	gpg -d $KEYFILE > ${KEYFILE}_public_key.asc
#	KEYFILE=${1}_public_key.asc
#fi

if file $KEYFILE | egrep -q "PGP public key block"
then
	gpg --import $KEYFILE
	gpg --keyserver $KEYSERVER --send-keys $MYKEY
fi

exit 0
