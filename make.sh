#!/bin/bash
export LD_LIBRARY_PATH=/home/boy/gcc-arm-9.2-2019.12-x86_64-arm-none-eabi/lib:
export CROSS_COMPILE=arm-none-eabi-
export PATH=/home/boy/gcc-arm-9.2-2019.12-x86_64-arm-none-eabi/bin:$PATH
export CROSS_COMPILE_ARM_PATH=/home/boy/gcc-arm-9.2-2019.12-x86_64-arm-none-eabi 
sudo make menuconfig CROSS_COMPILE=arm-none-eabi- ARCH=arm
sudo make CROSS_COMPILE=arm-none-eabi- ARCH=arm
/home/boy/gcc-arm-9.2-2019.12-x86_64-arm-none-eabi/arm-none-eabi/bin/objdump -D vmlinux > /home/boy/Downloads/kernel/input/new_0429_pm.txt

