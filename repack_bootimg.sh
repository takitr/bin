#########################################################################
# File Name: /home/xinhai/bin/repack_bootimg.sh
# Author: zhaoxh
# mail: zhaoxh@163.com
# Created Time: Wed 29 Oct 2014 02:05:40 PM CST
#########################################################################
#!/bin/bash

cd kernel/ramdisk

find . | cpio -o -Hnewc |gzip -9 > ../ramdisk.img

cd ..

rm ramdisk -rf

mkbootimg --kernel uImage --ramdisk ramdisk.img --second $1 -o boot.img
