#########################################################################
# File Name: a.sh
# Author: zhaoxh
# mail: zhaoxh@163.com
# Created Time: Sat 06 Sep 2014 08:37:22 PM CST
#########################################################################
#!/bin/bash
#		echo -e "\033[31m$ii \033[0m arealy have in here"

filename=g18ref_th8.mk
apkflag=jstx
libflag=jstx_lib
TMP=./tmp

function addapk()
{
	a=`grep $apkflag -n $filename | awk -F: '{print $1}'`
	#	aa=`echo $a+1 | bc -q`
	let "a = $a + 1"
	sed -i ''$a'a\	$(LOCAL_PATH)/'$1':system/app/'$1' \\' $filename
}

function addlib()
{
	a=`grep $libflag -n $filename | awk -F: '{print $1}'`
	#	aa=`echo $a+1 | bc -q`
	#	let "a = $a + 1"
	sed -i ''$a'a\		$(LOCAL_PATH)/'$1'\/'$2':system/lib/'$2' \\' $filename
}

function replacefile()
{
	grep $1 $filename 2>/dev/null 1>&2
	if [ $? == 0 ];then
		sed -i 's/'$1'/'$2'/g' $filename
	else
		echo No Find $1 in $filename
	fi
}

if [ ! -d $TMP ];then
	echo "$TMP is no in live"
	exit
fi
function replace_apk_file()
{
	for i in `ls "$TMP"/*.apk`
	do
		newfile=`basename $i`
		ls $newfile 2>/dev/null 1>&2
		if [ $? == 0 ];then
			echo "$newfile arealy have in here"
		else 
			echo $newfile | awk -F'\\_|\\-|\\.' '{print $1}' > /tmp/1
			str=`cat /tmp/1 && rm /tmp/1`
			num=`ls "$str"* | wc -l`
			if [ $num != 1 ];then
				echo "have more oldfile to newfile "
				exit
			fi
			oldfile=`ls "$str"*`
			if [ $? == 0 ];then
				echo -e "\033[31m$oldfile \033[0m will replace to $TMP/$newfile"
				replacefile $oldfile $newfile
				git rm $oldfile
				cp $TMP/$newfile ./ -f
				git add $newfile
			else
				echo $str is no match in here
			fi
		fi
	done
}

function replace_lib()
{
	for i in `find . -name "lib*.so" | grep $TMP`
	do
		tmplib=`basename $i`

	done
}


replace_apk_file



