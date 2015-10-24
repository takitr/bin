#!/bin/bash

dstdir=$1

if [ ! -d $dstdir ];then
    echo Usage: $0 dst_dir
    exit
fi

if [ $# != 1 ];then
    echo Usage: $0 dst_dir
    exit
fi




echo bcompare apk start ...
echo
same_apk_num=0 
for i in `find . -name *.apk`
do 
    md5=`md5sum $i | awk '{print $1}'`
    for j in `find -P $dstdir -name *.apk`
    do
       dstapkmd5=`md5sum $j | awk '{print $1}'`
       if [ $md5 == $dstapkmd5 ];then
         echo $i -- $j is the same $md5
         ((same_apk_num++))
       fi	
    done 
done

echo 
if [ $same_apk_num == 0 ];then
      echo there is no the same apk !!!!!
     else
      echo the same apk num is $same_apk_num
fi

echo  
echo bcompare bootvideo start ...
echo 

same_bootvideo_num=0
for i in `find . -name *.mp4`
do 
    md5=`md5sum $i | awk '{print $1}'`
    for j in `find -P $dstdir -name *.mp4`
    do
       dstapkmd5=`md5sum $j | awk '{print $1}'`
       if [ $md5 == $dstapkmd5 ];then
         echo $i -- $j is the same $md5
         ((same_bootvideo_num++))
       fi	
    done 
done

if [ $same_bootvideo_num == 0 ];then
	  echo there is no same bootvideo !!!!
      else
          echo the same bootvideo is $same_bootvideo_num
fi

echo  
echo bcompare bootup start ...
echo 
same_bootup_num=0
for i in `find . -name bootup`
do 
    md5=`md5sum $i | awk '{print $1}'`
    for j in `find -P $dstdir -name bootup`
    do
       dstapkmd5=`md5sum $j | awk '{print $1}'`
       if [ $md5 == $dstapkmd5 ];then
         echo $i -- $j is the same $md5
         ((same_bootup_num++))
       fi	
    done 
done

if [ $same_bootup_num == 0 ];then
	  echo there is no same bootup !!!!
      else
          echo the same bootup is $same_bootup_num
fi



 
