#!/bin/bash

KEYDIR="${HOME}/gpg/mysigned/"
MYKEY="0x7E37CE41"
KEYSERVER=pgp.mit.edu
#KEYSERVER=pgp.nic.ad.jp

test -z $1 && exit 1

KEYID="0x${1}"

gpg --keyserver $KEYSERVER --recv-keys $KEYID
gpg --edit-key $KEYID
gpg --list-sigs $KEYID
gpg --export -a $KEYID > ${KEYDIR}/${KEYID}_signed_by_${MYKEY}.asc

exit 0
