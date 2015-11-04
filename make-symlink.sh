#!/bin/sh -e
(
    cd
    install -d bin
    (
	cd scripts
	for i in *
	do
	    ln -sf ../scripts/$i -t ../bin/
	done
    )
)
