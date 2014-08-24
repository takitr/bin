#########################################################################
# File Name: /home/xinhai/bin/repackage.sh
# Author: zhaoxh
# mail: zhaoxh@163.com
# Created Time: Sat 23 Aug 2014 06:38:44 PM CST
#########################################################################
#!/bin/bash
PWD=`pwd`

if [ -e $PWD/update_unsign.zip ];then
	echo "Now Have update.zip in current dir"
	exit 0
fi
if [ ! -d $PWD/tmp ];then
	echo curren dir is not have tmp
	exit 0
fi

cd $PWD/tmp

zip -yr ../update_unsign.zip *

cd ..

rm -rf $PWD/tmp
