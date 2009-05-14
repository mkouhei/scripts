#!/bin/bash


mtasc -swf `basename $1 .as`.swf -main -header 320:240:12 -version 8 $1
