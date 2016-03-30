#!/bin/sh

tty=`tty`

# set environment
TRD_LIB=/usr/local/lib/zynq_opencv_install
export LD_LIBRARY_PATH=${TRD_LIB}
# check current terminal
if [ $tty == "/dev/ttyPS0" ] ; then
    # run command line based application
    ./video_library_cmd
else
    echo "Your current terminal is $tty."
    echo "Please start the command line based sobel filter TRD application from the UART terminal (/dev/ttyPS0)."
    exit 1
fi
