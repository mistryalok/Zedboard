#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/alok/githum/Zedboard/Learning/opencv_hls/xapp1167_vivado/sw/fast-corner/prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
