#!/bin/bash

KEYDIR="${HOME}/gpg/mysigned/"
MYKEY="0xDD783BD9"
KEYSERVER="18.92.0.144"
test -z $1 && exit 1

KEYID="0x${1}"

gpg --keyserver $KEYSERVER --recv-keys $KEYID
gpg --edit-key $KEYID
gpg --list-sigs $KEYID
gpg --export -a $KEYID > ${KEYDIR}/${KEYID}_signed_by_${MYKEY}.asc

exit 0
