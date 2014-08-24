#########################################################################
# File Name: /home/xinhai/bin/unpackage.sh
# Author: zhaoxh
# mail: zhaoxh@163.com
# Created Time: Sat 23 Aug 2014 06:33:36 PM CST
#########################################################################
#!/bin/bash

PWD=`pwd`

function Usage()
{	
	echo Please run: unpackage xxx.zip
}

if [ $# != 1 ];then
	Usage
	exit 0
fi

if [ -d $PWD/tmp ];then
	echo "curren dir is have tmp"
	exit 0
fi

mkdir $PWD/tmp

unzip $1 -d $PWD/tmp
