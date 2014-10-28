#########################################################################
# File Name: /home/xinhai/bin/init_logo.sh
# Author: zhaoxh
# mail: zhaoxh@163.com
# Created Time: Tue 28 Oct 2014 03:51:44 PM CST
#########################################################################
#!/bin/bash

if [ $# != 1 ];then
	echo Usage: $0 xxxx.bmp     !!!!
	exit
fi

convert -depth 8 $1 rgb:initlogo.raw

rgb2565 -rle <initlogo.raw> initlogo.rle

rm initlogo.raw
ls initlogo.rle

