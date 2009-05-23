#!/bin/bash

VMDIR=${HOME}/vmimg
VMIMG=debian.img
BOOT=c
MEM=384
DISPLAY='-curses'
OPTS='-redir tcp:2222::22'


kvm -hda ${VMDIR}/${VMIMG} -boot $BOOT -m $MEM $DISPLAY $OPTS
