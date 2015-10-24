#!/bin/bash


outdir=$1
LIBDIR=lib/armeabi*

if [ $# != 1 ];then
    echo Usage: $0 apkdir
    exit 
fi

if [ ! -d $1 ];then
   echo $1 need is a dir
   exit
fi


for i in `find . -name '*.apk'`
do
   unzip -l $i | grep $LIBDIR #1>/dev/null
   if [ $? == 0 ];then
   	echo -e "\033[31m Extract $i  lib/armeabi so to -------> $outdir\033[0m"
        unzip -o -q -j $i $LIBDIR  -d $outdir
   fi
done








#unzip http://blog.csdn.net/studyvcmfc/article/details/6168605
