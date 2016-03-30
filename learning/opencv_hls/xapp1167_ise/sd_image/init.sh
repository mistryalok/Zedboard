#!/bin/sh

TRD_LIB=/usr/local/lib/zynq_opencv_install

if [ ! -d ${TRD_LIB} ]
then
  mkdir -p ${TRD_LIB} 
fi

if [ ! -d ${TRD_LIB}/lib ]
then
  mount /mnt/opencv_lib.img ${TRD_LIB} -r -o loop
fi

if [ ! -f /dev/xvdma ]
then
  mknod /dev/xvdma c 10 224
fi

echo "-----------Video Library TRD Application-------------"
echo "To run this application, type the following commands:"
echo "cd /mnt"
echo "./run.sh"
echo "-----------------------------------------------------"
