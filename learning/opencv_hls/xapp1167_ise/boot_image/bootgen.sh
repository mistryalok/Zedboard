#!/bin/bash

bootgen -image bootimage.bif -o i BOOT.bin -w on
if [ $? -eq 0 ]; then
    echo "BOOT.bin successfully generated."
else
    echo "BOOT.bin failed to generate."
fi
