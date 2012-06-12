#!/bin/bash

# MacBook Air Superdrive
#cdrecord -dev=4,0,0 -blank=fast

# MacBook 
#cdrecord -dev=1,0,0 -blank=fast
cdrskin -v dev=/dev/cdrom blank=as_needed
