#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/alok/Work/Zedboard/temp/hls/solution1/.autopilot/db/a.g.bc ${1+"$@"}
