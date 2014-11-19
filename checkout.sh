#########################################################################
# File Name: /home/xinhai/bin/checkout.sh
# Author: zhaoxh
# mail: zhaoxh@163.com
# Created Time: Fri 05 Sep 2014 09:38:25 AM CST
#########################################################################
#!/bin/bash

for i in `git checkout |awk '{print $2}'`
do
	echo $i 
	git checkout $i
done
