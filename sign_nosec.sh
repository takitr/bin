#########################################################################
# File Name: /home/xinhai/bin/sign_nosec.sh
# Author: zhaoxh
# mail: zhaoxh@163.com
# Created Time: Sat 23 Aug 2014 05:31:35 PM CST
#########################################################################
#!/bin/bash
KEY_PATH=/opt/signzip
filename=$1
PWD=`pwd`

function Usage()
{
	echo "Please input: sign_nosec.sh xxx.zip"
}
if [ $# != 1 ];then
	Usage
	exit 0
fi

if [ -e $PWD/update.zip ];then
	echo "current dir is have update.zip"
	exit 0
fi

if [ ${filename##*.} !=	"zip" ];then
	echo "You need choose zip package for signapk"
	exit 0
fi

java -Xmx1536m -jar $KEY_PATH/signapk.jar -w $KEY_PATH/nosecurekey/testkey.x509.pem $KEY_PATH/nosecurekey/testkey.pk8 $1 update.zip
