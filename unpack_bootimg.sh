#########################################################################
# File Name: /home/xinhai/bin/unpack_bootimg.sh
# Author: zhaoxh
# mail: zhaoxh@163.com
# Created Time: Wed 29 Oct 2014 01:51:33 PM CST
#########################################################################
#!/bin/bash


if [ -d ./kernel ];then
	rm kernel -rf;
fi

mkdir kernel

unpackbootimg.exe -i boot.img -o kernel 

cd kernel

mv ramdisk.img ramdisk.img.gz

gunzip -d ramdisk.img.gz

mkdir ramdisk

mv ramdisk.img ramdisk

cd ramdisk

cpio -i -F ramdisk.img

rm ramdisk.img
