#########################################################################
# File Name: /home/xinhai/bin/a.sh
# Author: zhaoxh
# mail: zhaoxh@163.com
# Created Time: Fri 05 Sep 2014 10:49:23 AM CST
#########################################################################
#!/bin/bash

apk_dir=./

for i in `ls "$apk_dir"*.apk`
do
	unzip -v $i | grep lib
	if [ $? == 0 ];then
		if [ -d tmp/$i ];then
			rm -rf tmp/$i
		fi
		mkdir -p tmp/$i
		unzip -d tmp/$i $i
		echo $i
	fi
done
