#########################################################################
# File Name: /home/xinhai/bin/patch.sh
# Author: zhaoxh
# mail: zhaoxh@163.com
# Created Time: Sun 21 Sep 2014 10:34:18 AM CST
#########################################################################
#!/bin/bash

DIR=`pwd`
TOP=$T
patchdir=/tmp/$1/${DIR/$TOP\//}

if [ ! $TOP ];then
	echo please select your product first !
	exit
fi

if [ $# != 1 ];then
	echo Usage:$0 dirname
	exit
fi

#mkdir -p -m 777 /tmp$DIR 
if [ ! -d /tmp/$1 ];then
	mkdir -p $patchdir
else
	echo /tmp/$1 is live and rm $1
#	rm /tmp/$1 -rf
#	exit
fi

#cp diff file to new Your dir

for i in `git status | grep modified | awk '{print $3}'`
do
	modfile=`basename $i`
	moddir=${i/\/$modfile/}
	mkdir -p $patchdir/$moddir
	cp -rvf $i $patchdir/$moddir/
done

#add patch

tmp=${DIR/$TOP\//}
patchfilename=${tmp/\//_}.patch

git diff > /tmp/$1/$patchfilename

cd /tmp/$1
if [ -f $1.tar.gz ];then
	rm $1.tar.gz
fi
	tar -czf $1.tar.gz *
cd -



