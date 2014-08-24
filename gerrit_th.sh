#!/bin/bash

local_ip=192.168.1.107
remote_ip=27.154.234.214
port=29418


# parameters
echo "Total parameter is    ==> $#"
[ "$#" -lt 1 ] && echo "The number of parameter is less than 1. stop here" && echo "usage: gerrit.sh username [local]" && exit 0
[ "$#" -gt 2 ] && echo "The number of parameter is less than 1. stop here" && echo "usage: gerrit.sh username [local]" && exit 0

if [ "$#" -eq 1 ]; then
	echo "The number of parameter is 1"
	user=$1
	ip=$remote_ip
elif [ "$#" -eq 2 ]; then
	echo "The number of parameter is 2."
	user=$1
	[ "$2" = "local" ] && ip=$local_ip
fi

echo "user: $user   ip: $ip"


#has .git dir?
[ ! -d .git ] && echo "the current dir:`pwd` has no .git. then exit" && exit 0


#scp commit-msg
echo "scp commit-msg"
scp -P 29418 -p $user@$ip:/hooks/commit-msg ./.git/hooks/
if [ $? -eq 0 ]; then
	echo "scp excute OK: $?"
else
	echo "scp excute NG: $?"
	exit 0
fi

  
#has gerrit remote?
remote_show=`git remote show | grep 'gerrit'`
echo "remote_show: $remote_show"
[ ! -z "$remote_show" ] && echo "find remote: gerrit. then rm gerrit" && git remote rm gerrit


# get git repo
remote=`git remote -v | grep 'origin' | grep 'push'`
if [ -z "$remote" ]; then
	echo "not find remote: origin. then search remote: timehold-server"
	remote=`git remote -v | grep 'timehold-server' | grep 'push'`
	[ -z "$remote" ] && echo "not find remote: timehold-server. then exit 0" && exit 0
fi

echo "remote: $remote"
#git_repo=`echo $remote | awk '{print "lines \t" NR "columes \t" NF "\t" $2 }'`
git_repo=`echo $remote | awk '{print $2 }'`
echo "git_repo: $git_repo"


#add git remote "gerrit"
#from1 git_repo: file:///repository/timehold/server_admin.git
#from2 timehold-server	ssh://git@27.154.234.214/repository/amlogic/mx-jellybean-mr1-box-ol/jellybean/uboot
#to   ssh://xiacj@27.154.234.214:29418/repository/timehold/server_admin.git
#gerrit_remote_repo=`echo $git_repo | sed 's/^.*\/\///'`
gerrit_remote_repo=`echo $git_repo | sed 's/^.*\/repository/repository/'`
echo "gerrit_remote_repo: $gerrit_remote_repo"
gerrit_remote="ssh://"$user"@"$ip":"$port"/"$gerrit_remote_repo
echo "gerrit_remote: $gerrit_remote"

git remote add gerrit $gerrit_remote
if [ $? -eq 0 ]; then
	echo "git remote add gerrit OK: $?"
else
	echo "git remote add gerrit NG: $?"
	exit 0
fi
