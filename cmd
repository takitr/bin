tree -L 1

sdc_update boot boot.img

update reboot


stop adbd;setprop service.adb.tcp.port 5555;start adbd 

http://125.39.118.37/otaupdate/update

自动编译
http://27.154.234.214:8088/job/mxbox-pbs-1225/

mount -rw -o remount /dev/block/system /system/
mount -o rw,remount /system

  usb start;fatload usb 0 82000000 u-boot;sf probe 2;sf erase 0 60000;sf write 82000000 0 60000

ssh XXX@timehold.f3322.org -p 8989
scp -P 8989 1 zhaoxinhai@timehold.f3322.org:~

scp -P 7878 ~/.ssh/id_rsa.pub zhaoxinhai@timehold.wicp.net:~/.ssh/authorized_keys

sz http://timehold.wicp.net:8888/

xm  http://27.154.234.214:8088/job/m8-s805-cibn/
	
	http://27.154.234.214:8081/#/

外网 timehold.wicp.net
内网 192.168.2.4
外网端口 7878
内网端口 22
用户名 zhaoxinhai
默认密码 0000
11:05:12
/th_public1/jenkins/daily_build/m8-s805-cibn.sh

http://timehold.wicp.net:8888 可以登录这个查看和控制





lunch g24ref_g24ref_a706_780TPC-user
   make otapackage -j4

   单独编译kernel:
   ./device/amlogic/g24ref_a706_780TPC/quick_build_kernel.sh  bootimage   meson6_g24_a706_780TPC_jbmr1_defconfig

   单独编译u-boot:
   make m6_g24_A706_config
   make -j4


make m6_mbx_th8_config && make -j8


2) if uboot support secure mode
 10      $make distclean
 11      $make m6_mbx_th8_secure_config 
 12      $make -j8



am start -n com.amlogic.osdoverlay/.HdmiInActivity

aapt dump badging xxx.apk


busybox ifconfig eth0 hw ether 00:11:22:33:44:66
env set ethaddr 00:11:22:33:44:55

mac_wifi

 cd sys/class/aml                                              
root@android:/sys/class/aml_keys/aml_keys # echo mac > key_name
root@android:/sys/class/aml_keys/aml_keys # cat key_read
root@android:/sys/class/aml_keys/aml_keys # echo mac > key_name
33353a33613a33363a3631 > key_write                                            <
root@android:/sys/class/aml_keys/aml_keys # cat key_read
root@android:/sys/class/aml_keys/aml_keys # cat /sys/class/                    at        

 repo init -u ssh://git@27.154.234.214/repository/amlogic/mx-jellybean-mr1-box-pbs/platform/manifest.git -b jb-mr1-1225-timehold --repo-url=ssh://git@27.154.234.214/repository/android/git-repo.git

timehold 0823

repo init -u ssh://git@27.154.234.214/repository/amlogic/m8box-kitkat/kitkat/platform/manifest.git -b kk-timehold-0823-0113 --repo-url=ssh://git@27.154.234.214/repository/android/git-repo.git


电信/OTT代码
repo init -u ssh://git@27.154.234.214/repository/amlogic/m8box-kk-iptv/platform/manifest.git -b kk-amlogic-iptv-sync -m kk-amlogic-iptv-base20140815-ctc-20141030.xml --repo-url=ssh://git@27.154.234.214/repository/android/git-repo.git

移动/OTT代码  m201
repo init -u ssh://git@27.154.234.214/repository/amlogic/m8box-kk-iptv/platform/manifest.git -b kk-amlogic-iptv-sync -m kk-amlogic-iptv-base20140815-cbc-20150122.xml --repo-url=ssh://git@27.154.234.214/repository/android/git-repo.git


mx浙江移动   g18
repo init -u ssh://git@27.154.234.214/repository/amlogic/mxbox-jb-iptv/platform/manifest.git -b jb-mr1-amlogic-chinamobile-20140516-sync -m jb-mr1-amlogic-chinamobile-20141110.xml --repo-url=ssh://git@27.154.234.214/repository/android/git-repo.git


s812 n200 

s802 k200


1. 代码下载
移动代码
repo init -u ssh://git@27.154.234.214/repository/amlogic/m8box-kk-iptv/platform/manifest.git -b kk-amlogic-iptv-sync --repo-url=ssh://git@27.154.234.214/repository/android/git-repo.git

电信/OTT代码
repo init -u ssh://git@27.154.234.214/repository/amlogic/m8box-kk-iptv/platform/manifest.git -b kk-amlogic-iptv-sync -m kk-amlogic-iptv-ott-ctc.xml --repo-url=ssh://git@27.154.234.214/repository/android/git-repo.git

---------------------------------------------------------------------------------------------------------
2. 代码编译方法：

1. 需要export PROJECT_TYPE，为了区分版本的类别，分为移动，电信，OTT：

移动IPTV ==> export PROJECT_TYPE=mobile

电信IPTV ==> export PROJECT_TYPE=telecom

电信IPTV ==> export PROJECT_TYPE=ott

2. 需要export PROJECT_ID，为了区分平台硬件差异，如你的项目ID为k21等：

k21   ==> export PROJECT_ID=k21

m201  ==> export PROJECT_ID=m201

3. 电信IPTV配置，上海电信、广东电信:

BUILD_SH_TELECOM_APKS := false

BUILD_GD_TELECOM_APKS := true

4. 配置电信IPTV中间件:

BUILD_SY_APKS := true

BUILD_IPANEL_APKS := false

5.具体编译命令如下：

M201公版+电信IPTV:

. build/envsetup.sh;export PROJECT_TYPE=telecom PROJECT_ID=m201;lunch m201-user;make otapackage -j24

M201公版+移动IPTV:

. build/envsetup.sh;export PROJECT_TYPE=mobile PROJECT_ID=m201;lunch m201-user;make otapackage -j24

k21项目+电信IPTV:

. build/envsetup.sh;export PROJECT_TYPE=telecom PROJECT_ID=k21;lunch m201-user;make otapackage -j24

---------------------------------------------------------------------------------------------------------
3. 移动IPTV设置mac和serialno的方法(以cntv的序列号和mac为例)：

                    移动开户需要SN，移动后台开完户后，进入bestv和cntv的话，SN无关，关键是androidboot.mac和mac.

					                    在uboot下命令行，在storeargs的参数里添加：

										androidboot.serialno=00AA00010307040O001098BC5707F5D0

										androidboot.mac=98:BC:57:07:F5:D0

										mac=98:BC:57:07:F5:D0


004001FF005200100001
64
D954010207
64:D9:54:01:02:07



repo start jb-mr1-timehold-1225 --all

git clone ssh://zhaoxinhai@27.154.234.214:29418/repository/timehold/TH-factoryTest

git clone ssh://git@27.154.234.214/repository/timehold/TH-factoryTest.git -b kk-timehold-0823-cibn


git clone ssh://git@27.154.234.214/repository/timehold/mx-SettingEx-pbs.git

git clone ssh://zhaoxinhai@27.154.234.214:29418/repository/timehold/mx-OTAUpgrade
git branch -a
git checkout xxx

git clone ssh://git@27.154.234.214/repository/timehold/m8-cibn/Settings_cibn
git clone ssh://git@27.154.234.214/repository/timehold/m8-vl/VLMediaCenter

IOV
git clone ssh://zhaoxinhai@27.154.234.214:29418/repository/timehold/obd/IOV

git push gerrit HEAD:refs/for/jb-mr1-1225-timehold

git push gerrit HEAD:refs/for/kk-timehold-0823-cibn
git remote show gerrit

repo manifest -r -o .repo/manifests/test-ok.xml 
repo init -m test-ok.xml 

repo forall -c "git reset --hard"


repo manifest -o - | grep default

git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:nicky1990/aml_res.git
git push -u origin master""


git log --stat -2
git commit --amend -m "aaaaaaaaaaa"
git reset --soft HEAD^^

git checkout oldbranche                //将其他分支的修改应用到oldbranche
git cherry-pick 2fa2f80

git archive --format tar -o file.tar HEAD

git fetch origin master:tmp
git diff tmp
git merge tmp
git branch -d tmp


set bootcmd run compatible_boot


git checkout  -b test 4b17dbf              创建基于住分支 4b17dbf or tag 的 test 分支 并切换到 test分支

git stash                            保存当前修改未提交修改的代码
git stash pop             

git reset --hard    # 恢复最近一次提交过的状态，即放弃上次提交后的所有本次修改 

git ci --amend      # 修改最后一次提交记录  
nano 

ctrl+o + ctrl x

git revert <$id>    # 恢复某次提交的状态，恢复动作本身也创建了一次提交对象  
git revert HEAD     # 恢复最后一次提交的状态  

git br -v           # 查看各个分支最后提交信息  
git br --merged     # 查看已经被合并到当前分支的分支  
git br --no-merged  # 查看尚未被合并到当前分支的分支  


git diff > ../sync.patch         # 生成补丁  
git apply ../sync.patch          # 打补丁  
git apply --check ../sync.patch  #测试补丁能否成功  

git remote set-head origin master   # 设置远程仓库的HEAD指向master分支 

git config --global diff.tool bc3
git config --global difftool.bc3.path "/usr/bin/bcompare"

git log --pretty=oneline 文件名

git log --after=2015-04-01
git log --before=2015-04-01


./gerrit_th.sh zhaoxinhai 
git add .
git commit
//git commit --amend   还原上一次的提交
git push gerrit HEAD:refs/for/jb-mr1-1225-timehold


http://27.154.234.214:8081/#/settings/

http://27.154.234.214:8000/redmine/projects/
zhaoxinhai
th-zxh
http://27.154.234.214:8000/redmine/login

zhaoxinhai
th-zhao 

3、执行gerrit_th
./gerrit_th chenww
执行git remote -v可以发现多了gerrit branch
4、提交代码的操作
git add xxxx
git commit
git push gerrit HEAD:refs/for/master （这里master需要对应修改为你当前工作对应的服务器branch名称，例如remotes/timehold-server/jb-timehold，就用jb-timehold替换master。 使用原有方式push代码会提示出错）
5、代码提交后的审核工作
打开http://27.154.234.214:8081

单独编译 res-package.img
s805/device/amlogic/common/res

cat res-package.img > /dev/block/logo

0x000000000000-0x000000060000 : "bootloader"
0x000000080000-0x000000088000 : "ubootenv"
""""



0x000000800000-0x000001000000 : "logo"
0x000001000000-0x000001800000 : "aml_logo"
0x000001800000-0x000002000000 : "recovery"
0x000002000000-0x000002800000 : "boot"
0x000002800000-0x000043000000 : "system"
 NAND bbt detect factory Bad block at 14c00000 
 0x000043000000-0x000063000000 : "cache"
 0x000063000000-0x000073000000 : "backup"
 0x000073000000-0x0000fc400000 : "data"
 
 usb start;fatload usb 0 82000000 boot.img;bootm

 nand info
 nand erase 2000000 800000
 nand write 82000000 2000000 800000


awk {print } < adbkey.pub | openssl base64 -A -d -a | openssl md5 -c | awk {print } | tr [:lower:] [:upper:]


mx取码流文件

1. mkdir /data/tmp
2. chmod 777 /data/tmp
3. setprop media.libplayer.dumpmode x
    x value as follows:
	    1:raw data read (for ts, ps, rm read data from stream)
	    2:raw data write (for ts,ps, rm write data to avbuffer)
	    4:video es data read (for es video data, such as avi, mkv, mov, mp4 etc.)
	    8:video es data write
		    16:audio es data read
			    32:audio es data write
				dump file is under /data/tmp, and file name is pidn_dump_xx.dat, pidn is player_id, used to recognize different player threads.

mkdir /data/tmp;chmod 777 /data/tmp;setprop media.libplayer.dumpmode 2

加在 LOCAL_PACKAGE_NAME := HiveviewSetting 之前 
LOCAL_DEX_PREOPT := false


convert -resize 1920x1080! aaa.bmp bbb.bmp                      ! 强制转
convert -resize 1280x720! input.bmp output.bmp

convert -fill green -pointsize 40 -draw 'text 10,50 "charry.org"' inputpic outputpic      //在图片左上角添加 绿色 charr.org 字
import        截图
display
identify

重新提交代码



git branch jb-mr1-1225-timehold
git checkout jb-mr1-1225-timehold
git fetch timehold-server
git rebase timehold-server/jb-mr1-1225-timehold
git commit --amend
git push gerrit HEAD:refs/for/jb-mr1-1225-timehold

git push xxx


linux 字符图形

asciiquarium
sl
fortune
figlet 
cowsay
cmatrix
jp2a
bb

多线程下载工具
axel
http://www.freehao123.com/baiduyun-linux-vps/

擦出nand env
store disprotect key; store scrub 0


sudo mount -t cifs //10.28.5.240/test /var/tmp/share/ -o username=administrator,password=


android 查看内存命令

 dumpsys media.player -m 
dumpsys meminfo
monkey -p com.demo -v 100

adb pull /data/data/com.android.providers.settings/databases/settings.db

screencap -p aaa.png
screenrecord 

select * from system
update Secure set value=1 where name = 'eth_on';

build/tools/buildinfo.sh

openssl pkcs8 -in build/target/product/security/testkey.pk8 -inform DER -nocrypt

./build/tools/aml_upgrade/aml_image_v2_packer -r out/target/product/m201_th0/aml_upgrade_package.conf out/target/product/m201_th0/ out/target/product/m201_th0/aml_upgrade_package.img

mkuserimg.sh -s out/target/product/m201_th0/system out/target/product/m201_th0/obj/PACKAGING/systemimage_intermediates/system.img ext4 system 1073741824 out/target/product/m201_th0/root/file_contexts

simg2img

out/target/product/m201_th0/obj/KERNEL_OBJ/arch/arm/boot/dts/amlogic/meson8b_m201_1G_th0.dtb

解压 ramdisk.img   mv ramdisk.img ramdisk.img.gz;ramgunzip randisk.img.gz;cpio -i -F ramdisk.img
解压 logo.img   imgpack -d logo.img aaa

find . | cpio -o -Hnewc |gzip -9 > ../image.cpio.gz
mkbootimg --kernel uImage --ramdisk ramdisk.img --second ../meson8b_m201_1G_th0.dtb -o boot.img

vcc gnd tx rx

recovery --update_package=/udisk/
echo --update_package=/cache/update.zip > /cache/recovery/commond

cibn:  echo on/off > /proc/net_state  echo pon/poff > /proc/power_state

config kernel :  make kernelconfig/make ksavedefconfig

setprop sys.powerctl reboot;    重启服务 ctl.stop zygote;ctl.start zygote  rawbu  bugreport

dexdump;hexdump

aml制作死机 echo write 0x00000000 0x30003000 >sys/class/amlogic/debug

framework 添加字符资源
string.xml
public.xml
 尝试更新api声明（make update-api），./frameworks/base/api/current.txt


api:
Log.d(TAG,Log.getStackTraceString(new Throwable()));

VPN 帐号
li.sj.pandapow.us
HowEasy
pp63097
xKrqvMuYu

cat /proc/`ps | grep com.voole.vooledesktop | awk '{print $2}'`/oom_adj
echo 1 > /proc/sys/kernel/printk
top -d 1 | grep voole



fatload mmc 0 12000000 xx.bmp
bmp display 12000000

logcat | grep --color=auto -i

 arm-linux-gnueabihf-addr2line -f -e out/target/product/g18ref_th8/obj/KERNEL_OBJ/vmlinux  c00bf008

strace http://www.cnblogs.com/qianxudetianxia/archive/2012/05/14/2497073.html
tcpdump http://my.oschina.net/xiahuawuyu/blog/108915
tcpdump -p -vv -s 0 -w /sdcard/capture.pcap 

busybox telnetd -l /system/bin/sh


/framework/av/cmds
 stagefright -a -s -o /sdcard/music/01天鹅之旅.mp3
 screenrecord --size 1280*720 /sdcard/demo.mp4

smali logcat


const-string v2, "TAG"                                                                                                                 
const-string v3, "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

Toast

const-string v2, "test"
const/4 v3, 0x1
invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/Toast;->show()V


MethodTracing

 <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
onCreate
const-string v2, "hahahahaha"
invoke-static {v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

onStop
invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V





crash:

arm-linux-gnueabihf-objdump -dS xxx.so


vim
supertab git clone http://github.com/ervandew/supertab 

easydlna

git clone git://code.csdn.net/Innost/easydlna.git

OTA_update

uboot source_code   git clone git://git.denx.de/u-boot.git
kernel source_code git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git

git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git


busybox git://git.busybox.net/busybox

gnu
China
http://mirror.hust.edu.cn/gnu/
http://mirror.bjtu.edu.cn/gnu/
http://mirrors.ustc.edu.cn/gnu/
ftp://mirrors.ustc.edu.cn/gnu/
rsync://mirrors.ustc.edu.cn/gnu/



==================================================================
amlogigc gpio set

uboot: gset GPIODV_29 out high
 1 set input 0 set output
				 CLEAR_AOBUS_REG_MASK(AO_RTI_PIN_MUX_REG, (1<<11)|(1<<25));
				 CLEAR_AOBUS_REG_MASK(AO_GPIO_O_EN_N, 1<<1);																								CLEAR_AOBUS_REG_MASK(AO_GPIO_O_EN_N, 1<<17);
  
  aml_set_reg32_mask(P_PERIPHS_PIN_MUX_9,0x1<<19);//set mode GPIOX_10-->CLK_OUT3
  
  setbits_le32(P_AO_GPIO_O_EN_N, (1 << 3));                           // GPIOAO_3 as power key input
  clrbits_le32(P_AO_RTI_PIN_MUX_REG, ((1 << 7)|(1 << 9)|(1 << 22)));  // clear pinmux as gpio function
  
  set GPIODV_29 H
  
            clrbits_le32(P_PERIPHS_PIN_MUX_7, (1 << 25)|(1 << 26));                                                                                    clrbits_le32(P_PERIPHS_PIN_MUX_3, (1 << 25));
            clrbits_le32(P_PERIPHS_PIN_MUX_9, (1 << 26));
            aml_set_reg32_bits(CBUS_REG_ADDR(0x2012),0,29,1);
            aml_set_reg32_bits(CBUS_REG_ADDR(0x2013),1,29,1);


===============================================================

tar czvfp - m8iptv.tar.gz | split -b 3000m
cat xa* > m8iptv.tar.gz


rar a -v1024k 目的文件 原文件(路径)


==================================================================
MediaPlayer播放dump流
----------------------------------------------------------------------------------------
ts dump流
1. setprop  media.libplayer.dumpmode 0 or 1
2. mkdir /data/tmp
3. chmod 777 /data/tmp
4. 停止播放，再播放，录的流位于/data/tmp

es dump流
1. setprop  media.libplayer.dumpmode 4 or 8
2. mkdir /data/tmp
3. chmod 777 /data/tmp
4. 停止播放，再播放，录的流位于/data/tmp

hls dump 流
1. setprop libplayer.hls.dump 1
2. mkdir /cached
3. chmod 777 /cached
4. 停止播放，再播放，录的流位于/cached.

电信CTC播放dump流：
---------------------------------------------------------------------------------------------
1. setprop iptv.dumpfile 1
2. 插入U盘，
3. kill iptv apk( ps 查看pid)
	4. 播放，录流位于/storage/external_storage/sda1/Live0.ts
=================================================================
tftp

/etc/default/tftpd-hpa
sudo /etc/init.d/tftpd-hpa restart

ubuntu tftp 127.0.0.1 -c get boot.img
xp     tftp -i 192.168.2.242 get boot.img
android  
get tftp -g -l boot.img 192.168.2.242

ftpget
ftpget -u ftp-common -p timehold 27.154.234.214 README

tar czf m8iptv_youpeng.tar.gz * --exclude .repo --exclude .git --exclude out


cat /proc/meminfo

MemTotal:         829612 kB
MemFree:          373420 kB
Buffers:           21704 kB
Cached:           161176 kB

剩余总内存   MemFree + Buffers + Cached


echo 0 0 1279 719 > /sys/class/graphics/fb0/window_axis
echo 0x10001 > /sys/class/graphics/fb0/free_scale



Log.d("ttt123",Log.getStackTraceString(new Throwable()));
\\10.28.11.7
sw
soft8205
\\10.28.11.7\anyone\CIBN


logcat -c;logcat -s -vtime amplayer amffmpeg

==============================================
游乐桶

am broadcast -a airplay.amlogic.changeName -e DEVNAME AirPlay-中华云盒

Hank 2015-3-27 14:52:07
am broadcast -a airplay.amlogic.stopService

Hank 2015-3-27 14:52:19
am broadcast -a airplay.amlogic.startService

================================================
pppoe

add address=xxx.xxx.xxx.xxx/xx interface=ether1


pppoe -p /data/misc/etc/ppp/pppoe.pid -I eth0 -T 80 -U -m 1412

拨号
sudo pppoe-setup 
sudo pppoe-start

chown 1000:1000 xxx         system:system

ssh hank.chen@10.28.8.15
hank.chen
Linux2010