tree -L 1

sdc_update boot boot.img

update reboot


stop adbd;setprop service.adb.tcp.port 5555;start adbd 

http://125.39.118.37/otaupdate/update

自动编译
http://27.154.234.214:8088/job/mxbox-pbs-1225/

mount -rw -o remount /dev/block/system /system/
mount -o rw,remount /system

busybox mount -t nfs -o ro,nolock 192.168.1.103:/nfsboot /mnt/sdcard/nfs


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


0428 mx


repo init -u ssh://git@timehold.f3322.org/amlogic/mx-jellybean-mr1-box-ol/jellybean/platform/manifest.git -b jb-mr1-timehold-new-0428 --repo-url=ssh://git@timehold.f3322.org/android/git-repo.git



pbs 1225 mx  g18_th8

 repo init -u ssh://git@27.154.234.214/repository/amlogic/mx-jellybean-mr1-box-pbs/platform/manifest.git -b jb-mr1-1225-timehold --repo-url=ssh://git@27.154.234.214/repository/android/git-repo.git

timehold 0823

repo init -u ssh://git@192.168.2.3/amlogic/m8box-kitkat/kitkat/platform/manifest.git -b kk-amlogic-sync -m openlinux_kk-amlogic_20140823_patch_150313.xml --repo-url=ssh://git@192.168.2.3/android/git-repo.git


repo init -u ssh://git@27.154.234.214/repository/amlogic/m8box-kitkat/kitkat/platform/manifest.git -b kk-timehold-0823 --repo-url=ssh://git@27.154.234.214/repository/android/git-repo.git


s812 n200 

s802 k200

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



移动基地:

repo init -u ssh://git@timehold.f3322.org/amlogic/m8box-kk-iptv/platform/manifest.git -b kk-amlogic-iptv-base20140815-chinamobile-sync --repo-url=ssh://git@timehold.f3322.org/android/git-repo.git

地方招标:
repo init -u ssh://git@timehold.f3322.org/amlogic/m8box-kk-iptv/platform/manifest.git -b kk-amlogic-iptv-sync -m kk-amlogic-iptv-ott-ctc.xml --repo-url=ssh://git@timehold.f3322.org/android/git-repo.git


s812/s802 编译方法

telecom  
unicom 
nand   PROJECT_ID=k200a                 
emmc   PROJECT_ID=k200b

. build/envsetup.sh;export PROJECT_TYPE=telecom PROJECT_ID=k200a;lunch k200-user;make otapackage -j4





中国联通

repo init -u ssh://git@timehold.f3322.org/amlogic/m8box-kk-iptv/platform/manifest.git -b kk-amlogic-iptv-sync -m kk-amlogic-iptv-beijing_cu_20150724.xml --repo-url=ssh://git@timehold.f3322.org/android/git-repo.git


M201公版(M8 baby)+联通IPTV:
. build/envsetup.sh;export PROJECT_TYPE=unicom PROJECT_ID=m201;lunch m201-user;make otapackage -j24
M201C公版(M8 baby)+联通IPTV:
. build/envsetup.sh;export PROJECT_TYPE=unicom PROJECT_ID=m201C;lunch m201-user;make otapackage -j24
N200公版(S812)+联通IPTV:
. build/envsetup.sh;export PROJECT_TYPE=unicom PROJECT_ID=k200b;lunch k200-user;make otapackage -j24


. build/envsetup.sh;export PROJECT_TYPE=telecom PROJECT_ID=n200c;lunch k200-user;make otapackage -j24

Amlogic 0313
----------------
给客户的
repo init -u ssh://git@timehold.f3322.org/amlogic/m8box-kitkat/kitkat/platform/manifest.git -b kk-amlogic-sync -m openlinux_kk-amlogic_20140823_patch_150313.xml --repo-url=ssh://git@timehold.f3322.org/android/git-repo.git


自己开发

repo init -u ssh://git@timehold.f3322.org/amlogic/m8box-kitkat-cibn/kitkat/platform/manifest.git -b kk-amlogic-sync  -m openlinux_kk-amlogic_20140823_patch_150313.xml  --repo-url=ssh://git@timehold.f3322.org/android/git-repo.git

s812 sounbar ott

repo init -u ssh://git@timehold.f3322.org/amlogic/m8box-kitkat-cibn/kitkat/platform/manifest.git -b kk-amlogic-sync  -m s812-soundbar-150313.xml  --repo-url=ssh://git@timehold.f3322.org/android/git-repo.git


cibn

国广新 设置SDK
repo init -u ssh://git@timehold.f3322.org/amlogic/m8box-kitkat-cibn/kitkat/platform/manifest.git -b kk-timehold-0823 -m default-cibn-0108-ns.xml --repo-url=ssh://git@timehold.f3322.org/android/git-repo.git

国广旧设置SDK
repo init -u ssh://git@timehold.f3322.org/amlogic/m8box-kitkat-cibn/kitkat/platform/manifest.git -b kk-timehold-0823 -m default-cibn.xml --repo-url=ssh://git@timehold.f3322.org/android/git-repo.git

国广SETTING apk
git clone ssh://git@timehold.f3322.org/timehold/m8-cibn/Settings_cibn    

国广输入法
git clone ssh://git@timehold.f3322.org/timehold/m8-cibn/RemoteIME  

产测apk
git clone ssh://git@timehold.f3322.org/timehold/TH-factoryTest.git -b kk-timehold-0823-cibn 

git clone ssh://git@timehold.f3322.org/timehold/TH-factoryTest.git -b kk-timehold-0823-dare

git clone ssh://git@timehold.f3322.org/timehold/m8-cibn/cibn_vendor
git clone ssh://git@timehold.f3322.org/timehold/m8-cibn/logo_api_demo

git clone ssh://git@timehold.f3322.org/timehold/m8-cibn/libupdatelogo



dvb:

git clone ssh://git@timehold.wicp.net/timehold/app_th_dtv

这里面有三个ＡＰＫ

ＤＴＶ,　ＳＥＴＴＩＮＧ,　ＬＡＵＮＣＨＥＲ


s905:

repo init -u ssh://git@timehold.f3322.org/amlogic/l-amlogic-gx/l-amlogic-gx/platform/manifest.git -b  l-amlogic-gx-sync -m openlinux_l-amlogic_20150630.xml --repo-url=ssh://git@timehold.f3322.org/android/git-repo.git



s905 4.4 IPTV代码发布
repo init -u ssh://git@timehold.f3322.org/amlogic/m8box-kk-iptv/platform/manifest.git -b kk-amlogic-gxb-sync -m kk-amlogic-gxb-20150820.xml --repo-url=ssh://git@timehold.f3322.org/android/git-repo.git



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

删除远程分支
git push origin :test

重命令远程分支

1  删除远程分支  git push --delete origin devel
2  删除本地分支 git branch -m devel develop
3  推送本地分支 git push origin develop

.repo/manifests
git checkout -t m/kk-amlogic-sync


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

git blame services/java/com/android/server/WiredAccessoryManager.java | grep "xxxxx"

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

erase bootloader

dd if=/dev/zero of=/dev/block/bootloader



awk {print } < adbkey.pub | openssl base64 -A -d -a | openssl md5 -c | awk {print } | tr [:lower:] [:upper:]

10.3 查看CPU的频率
su
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
10.4  CPU频率控制（定频）
串口输入一下命令将CPU频率定频 1752M
su
echo performance > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 1752000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 


1.2 有声音和无视频
1.2.1 无视频或者视频不支持
这种情况可以用 PC 软件 mediainfo 看一下片源里面的流的信息。
确认文件里面是否有视频流。
确定视频流的格式,
从而来确认我们播放器是否支持。
1.2.2 deinterlace 和 ppmgr 阻塞
#echo 1 > /sys/module/di/parameters/bypass_all
#echo 1 > /sys/class/ppmgr/bypass
看看视频能不能出现,如果出现能确认是这两个模块的问题。
如果还是不出现,先退出播放,然后输入如下命令:
#echo rm default > /sys/class/vfm/map
#echo add default decoder amvideo > /sys/class/vfm/map
如果能正常播放,就属于这种情况。
1.2.3 视频数据不够
# cat /sys/class/amstream/bufs
Video buffer: flag:7( Alloc Used Parser nofirststamp )
buf addr:0000000020c00000
buf size:0x2800000
buf canusesize:0x2800000
buf regbase:0xc40
buf level:0x6a
buf space:0x27fe796
buf read pointer:0x215a4800
buf first_stamp:0xffffffff
buf wcnt:0x153a5
buf max_buffer_delay_ms:0ms
buf current delay:160ms
buf bitrate latest:85140bps,avg:1545405bps
buf time after last pts:15070 ms
buf time after last write data :15070 ms
如果 buf level 为 0x0,就代表没有视频数据,可能是 parser 或者是 demux 的问题。如果是播放的 ts 文件,可以切
换一下硬件 demux 和软件 demux,来确定问题。setprop libplayer.ts.softdemux 1 将 demux 设置成软件 demux。
1.2.4 osd 遮挡视频
echo 1 > /sys/class/graphics/fb0/blank
echo 1 > /sys/class/graphics/fb1/blank
如果输入这两个命令之后,视频显示出来了,就说明视频被 OSD 遮住了。
可以再播放时输入如下命令:
#dumpsys SurfaceFlinger
type
| handle | hint | flag | tr | blnd |
format
|
source crop (l,t,r,b)
|
frame
| name
-----------+----------+------+------+----+------+-------------+--------------------------------+------------------------+------
HWC | f653cd80 | 0002 | 0000 | 00 | 0100 | RGBA_8888
|
0.0,
0.0, 1920.0, 1080.0 |
0,
0,
1920, 1080 | SurfaceView
GLES | f5c3c1f0 | 0000 | 0000 | 00 | 0105 | RGBA_8888
|
0.0,
0.0, 1920.0, 985.0 |
0,
0, 1920,
985 | com.droidlogic.videoplayer/com.droidlogic.videoplayer.VideoPlayer
FB TARGET | f65219c0 | 0000 | 0000 | 00 | 0105 | RGBA_8888
|
0.0,
0.0, 1920.0, 1080.0 |
0,
0,
1920, 1080 | HWC_FRAMEBUFFER_TARGET
查看有没有 SurfaceView,并且看一下 hint 是不是为 0002。如果没有或者 hint 不是 0002,说明 APK 没有创建
videoview。
1.2.5 videolayer 关闭
#cat /sys/class/video/disable_video
a、video layer 被关闭:
返回“1”,需要在代码中查找设置/sys/class/video/disable_video 为 1 的地方。
b、没有视频帧需要输出:
返回“2”
有可能和同步相关:
#echo 0 > /sys/class/tsync/enable
如果可以正常播放,就属于这种情况。
有可能和 deinterlace 或者 ppmgr 相关,可以参见 1.2.2 来确认这种情况。
1.2.6 解码错误
这个一般都会有 decoder error 的打印,查看 kernel 打印就可以。
cat /sys/class/amstream/bufs
Video buffer:
flag:7( Alloc Used Parser nofirststamp )
buf addr:0000000020c00000
buf size:0x2800000
buf canusesize:0x2800000
buf regbase:0xc40
buf level:0x17fe796
buf space:0x27fe796
buf read pointer:0x215a4800
buf first_stamp:0xffffffff
buf wcnt:0x153a5
buf max_buffer_delay_ms:0ms
buf current delay:160ms
buf bitrate latest:85140bps,avg:1545405bps
buf time after last pts:15070 ms
看 video buffer 如果 buf level 很高,而且不变化,排除 di、ppmrg 的问题之后就应该是解码的问题。
需要抓取 cat /sys/class/vdec/amrisc_regs 信息。来确定 decoder 出现了什么问题。
1.2.7 视频 OSD 上显示还是在 video layer 显示
走 MediaCodec 和 OMX 的时候,还有可能显示在 OSD layer 上。
在播放过程中,输入如下串口命令:
#cat /sys/class/vfm/map
default_osd { osd(0) amvideo4osd}
default { decoder(1) ionvideo}
可以确认属于这种情况。
1.3 视频位置问题:
#cat /sys/class/video/axis (x0,y0,x1,y1)
#cat /sys/class/video/screen_mode(0:按片源比例显示;1:全屏;2:4 比 3;3:16 比 9)
1.3.1 Video View 的位置
#dumpsys SurfaceFlinger
type
| handle | hint | flag | tr | blnd |
format
|
source crop (l,t,r,b)
|
| name
-----------+----------+------+------+----+------+-------------+--------------------------------+------------------------+------
HWC | f653cd80 | 0002 | 0000 | 00 | 0100 | RGBA_8888
|
0.0,
0.0, 1920.0, 1080.0 |
frame
0,
0,
1920, 1080 | SurfaceView
GLES | f5c3c1f0 | 0000 | 0000 | 00 | 0105 | RGBA_8888
|
0.0,
0.0, 1920.0, 985.0 |
0,
985 | com.droidlogic.videoplayer/com.droidlogic.videoplayer.VideoPlayer
FB TARGET | f65219c0 | 0000 | 0000 | 00 | 0105 | RGBA_8888
|
0.0,
0.0, 1920.0, 1080.0 |
1920, 1080 | HWC_FRAMEBUFFER_TARGET
标红的为 video view 的位置
0, 1920,
0,
0,
1.3.2 窗口位置换算
如果 video view 的位置正确,而/sys/class/video/axis 的值不对,可能是换算出现问题。
logcat -s amavutils
E/amavutils( 2785): unable to open file /sys/class/graphics/fb2/clone,err: No such file or directory
I/amavutils( 2785): amvideo_utils_set_virtual_position :: x=0 y=0 w=1921 h=1081
I/amavutils( 2785): device resolution 1280x720
I/amavutils( 2785): disp resolution 1920x3240
I/amavutils( 2785): amvideo_utils_set_virtual_position:: disp_w=1920, disp_h=1080
I/amavutils( 2785): video global_offset 0
I/amavutils( 2785): set ppmgr angle :0
I/amavutils( 2785): /sys/class/graphics/fb0/free_scale_axis axis: 0 0 1919 1079
I/amavutils( 2785): after scaled, screen position3: 0 0 1280 720
I/amavutils( 2785): amvideo_utils_set_virtual_position (corrected):: x=0 y=0 w=1280 h=720
I/amavutils( 2785): /sys/class/graphics/fb0/free_scale_axis axis: 0 0 1919 1079
D/amavutils( 2785): amvideo_setscreenmode as 1.778499
蓝色字体为 video view 的位置,红色字体为换算之后的 video axis 的位置。
1.4 音视频卡顿
1.4.1 音视频同时卡顿
如果音视频同时卡顿,可能与如下原因:
a、 buffer 下溢
这五项分别代表 video、audio、subtitle、user data、h265video buffer 的情况,如果 buf level 比较低,表示 buffer 下
溢。有可能是 player 送数据不够;如果是 ts 文件,有可能是 demux 有问题,可以切换一下软件 demux 或者硬件
demux。切换方式为:setprop libplayer.ts.softdemux 1 为软件 demux,setprop libplayer.ts.softdemux 0 为硬件 demux。
cat /sys/class/amstream/bufs
Video buffer:
flag:7( Alloc Used Parser nofirststamp )
buf addr:0000000020c00000
buf size:0x2800000
buf canusesize:0x2800000
buf regbase:0xc40
buf level:0x65556a
buf space:0x21a9296
buf read pointer:0x20f4f300
buf first_stamp:0xffffffff
buf wcnt:0x1a227
buf max_buffer_delay_ms:0ms
buf current delay:10520ms
buf bitrate latest:85140bps,avg:1545405bps
buf time after last pts:4060 ms
buf time after last write data :4060 ms
Audio buffer:
flag:7( Alloc Used Parser nofirststamp )
buf addr:0000000027400000
buf size:0x180000
buf canusesize:0x180000
buf regbase:0x1584
buf level:0x275aa
buf space:0x157256
buf read pointer:0x27413e80
buf first_stamp:0xffffffff
buf wcnt:0x700
buf max_buffer_delay_ms:0ms
buf current delay:10496ms
buf bitrate latest:43680bps,avg:76144bps
buf time after last pts:4060 ms
buf time after last write data :4060 ms
Subtitle buffer:
flag:0( Unalloc Noused noParser nofirststamp )
buf addr:
(null)
buf size:0x40000
buf canusesize:0x40000
buf start:0x0
buf write pointer:0x0
buf read pointer:0x0
buf level:0x0
buf first_stamp:0xffffffff
buf wcnt:0x0
buf max_buffer_delay_ms:0ms
UserData buffer:
flag:0( Unalloc Noused noParser nofirststamp )
buf addr:
(null)
buf size:0x0
buf canusesize:0x0
buf regbase:0x0
buf no used.
buf write pointer:0x0
buf read pointer:0x0
buf first_stamp:0xffffffff
buf wcnt:0x0
buf max_buffer_delay_ms:0ms
HEVC buffer:
flag:0( Unalloc Noused noParser nofirststamp )
buf addr:
(null)
buf size:0x2800000
buf canusesize:0x2800000
buf regbase:0x3102
buf no used.
buf first_stamp:0xffffffff
buf wcnt:0x0
buf max_buffer_delay_ms:0ms
b、同步相关卡顿
查看同步模式,关闭同步,或者关闭声音
cat /sys/class/tsync/mode;
echo 0 > /sys/class/tsync/enable
setprop media.amplayer.noaudio true
查看同步模式
关闭同步
disable audio
查看 checkin checkou pts
echo 1 > /sys/class/tsync/debug_audio_pts
查看 audio pts
echo 1 > /sys/class/tsync/debug_pts_checkin
查看 checkin 的 pts
echo 1 > /sys/class/tsync/debug_pts_checkout 查看 checkout 的 pts
echo 1 > /sys/class/tsync/debug_video_pts
查看 video pts
1.4.2 只有视频卡
a、视频解码出错
这种情况只需要查看 kernel 打印即可,如果解码出错会有错误打印。
b、后处理相关卡顿
如果上述情况排除之后,还有可能是后处理模块或者是带宽造成的。
关闭 DI:
echo 1 > /sys/module/di/parameters/bypass_all
或者
echo rm default > /sys/class/vfm/map
echo add default decoder ppmgr amvideo > /sys/class/vfm/map
DI 关闭后如果不卡顿,也有可能不是模块本身的问题,有可能是带宽问题。此时需要按照 1.4.5 来确认。
关闭 PPMGR:
echo rm default > /sys/class/vfm/map
echo add default decoder deinterlace amvideo > /sys/class/vfm/map
通过 Underflow 查看:
cat /sys/module/amvideo/parameters/underflow
cat /sys/class/video/freerun_mode
卡顿时看这个值是否一直增长,如果是则是 amvideo 前边的节点数据送过来的慢导致的,
c、带宽不足卡顿
提高 CPU 频率:
cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq
echo performance > scaling_governor
关闭 OSD
echo 1 > /sys/class/graphics/fb0/blank
查看带宽信息
Check P_MMC_MON_CH0_REQ_CNT~P_MMC_MON_ALL_GRANT_CNT in header file.
P_MMC_MON_CTRL3 to set measure duration
P_MMC_MON_CTRL0~P_MMC_MON_CTRL2 to enable channel monitor
P_MMC_MON_CH0_REQ_CNT~P_MMC_MON_CH9_REQ_CNT to read back per channel request/grant
P_MMC_MON_ALL_REQ_CNT and P_MMC_MON_ALL_GRANT_CNT to read whole mmc request/grant
1.5 音视频不同步
如果出现音视频不同步,先确认如下状态:
同步是否打开:cat /sys/class/tsync/enable
同步的状态:cat /sys/class/tsync/mode
0: vmaster //视频为准,一般这个时候表示音视频不做同步;
1:amaster //以音频作为同步基准;
2:pcrmaster //以独立的系统时间为基准;
查看 APTS、PCR、VPTS:
cd /sys/class/tsync/
cat pts_audio pts_pcrscr pts_video
pts 的单位是 1/90000,也就是,数值 90000 表示一秒,一般比较明显的看到不同步在 100ms 左右,也就 9000;
如果 pts 不对就查看 checkin checkout pts。
1.5.2 音频比视频早
setprop sys.amplayer.drop_pcm 1
看是否还有不同步出现。
1.5.3 音频比视频晚
a、查看 checkin checkou pts
echo 1 > /sys/class/tsync/debug_audio_pts
查看 audio pts
echo 1 > /sys/class/tsync/debug_pts_checkin
查看 checkin 的 pts
echo 1 > /sys/class/tsync/debug_pts_checkout 查看 checkout 的 pts
echo 1 > /sys/class/tsync/debug_video_pts
查看 video pts
b、确认是 audio 还是 video 的问题
echo 0 > /sys/class/tsync/enable
对比在 PC 上播放该视频,确认是 audio 还是 video 播放的问题。
如果是 audio pts 有问题,一般是 pts 计算错误,这个一般出现在音频那边;以为音频 pts 计算复杂;
c、设置 freerun_mode
echo 1 > /sys/class/video/freerun_mode
看看是否还会不同步。
d、确认音频采样率
1.5.4 音频流畅,视频时快时卡住
这种情况可能是 vsync 里面算 pcr 有问题。
cat /sys/class/video/frame_rate
VF.fps=0.00 panel fps 50, dur/is: 93,v/s=49.46,inc=1800
panel fps 为输出的刷新率。
v/s 为实时刷新率。
1.5.5 一直流畅播放,但是不同步
设置控制同步的阀值
最小不同步时间:RW: /sys/class/tsync/av_threshold_min
最大不同步时间:RW:/sys/class/tsync/av_threshold_max
当音视频 pts 差距跳入:<min 区间: ?音频或者视频会暂停或者加速同步上;
当音视频 pts 差距>min,Max 是,
音视频会暂时不强制同步,
等待超时 60 秒后强制同步;?如果视频和音频差距>max,
同步系统放弃同步处理;
1.6 视频抖动、闪烁、锯齿
视频抖动、闪烁和锯齿大部分和 Deinterlace,RDMA 和 VPP 设置相关。
1.6.1 Deinterlace
a、确认 Deinterlace 模块是否在 vfm/map 链里
cat /sys/class/vfm/map
default { decoder(1) ppmgr(1) deinterlace(1) amvideo}
如果 default 里面没有 deinterlace,执行如下指令添加 deinterlace 模块。
echo rm default > /sys/class/vfm/map
echo add default decoder ppmgr deinterlace amvideo > /sys/class/vfm/map
b、确认 Deinterlace 模块是否被 bypass
播放节目过程中:cat /sys/module/di/parameters/bypass_state
如果为 1 则被 bypass
那要根据片源的情况,然后查看
cat /sys/module/di/parameters/
bypass_1080p
1080p 片源 bypass
bypass_3d
3D 片源是否 bypass
bypass_all
强制所有的都 bypass
bypass_dynamic
是否动态 bypass
bypass_hd
高清片源 bypass
bypass_hd_prog
高清逐行片源 bypass
bypass_interlace_output
I 模式输出的时候所有片源 bypass
bypass_prog
逐行片源 bypass
看是哪个结点造成 di bypass 的。把它设成 0 之后,然后再播放,看是否还抖动。
c、开关 nr
echo 0/1 >/sys/module/di/parameters/nr2_en
d、查看 Deinterlace 模块工作状态
echo state > /sys/class/deinterlace/di0/debug
e、确认送到 DI 模块的帧是否是 top/bottom 均匀穿插
cat /sys/module/di/parameters/same_field_bot_count
cat /sys/module/di/parameters/same_field_top_count
如果这两个值有一个一直在增加就说明前边解码器解码有问题,此时会出现锯齿。
f、小窗口视频闪烁
cat /sys/module/di/parameters/di_vscale_skip_count_real
是否真实在小窗口情况下
cat /sys/module/di/parameters/di_vscale_skip_count
是否是在小窗口情况下
cat /sys/module/di/parameters/di_vscale_skip_enable
是否 enable 小窗口时 bypass di
1.6.2 VPP 设置
在小窗口出现花屏或者闪烁的时候,还有可能是因为带宽问题。我们现在解决的方式就是在小窗口播放的时候,
先抽掉一部分视频帧的线,然后再送到 VPP 去显示。
通过如下命令可以看一下目前是否有抽线处理:
cat /sys/class/video/video_state
zoom_start_x_lines:0.zoom_end_x_lines:1279.
zoom_start_y_lines:0.zoom_end_y_lines:719.
frame parameters: pic_in_height 720.
//标示抽线后的高度
frame parameters: VPP_line_in_length_ 1280.
vscale_skip_count 0.
//标示抽线条数
hscale_skip_count 0.
hscale phase step 0x1000000.
vscale phase step 0x1000000.
根据这些状态信息可以确定输入的大小,是否抽线,是否在做 scale,是否打开 3d 等,一般花屏等问题需要这些信息。
如果发现窗口很小,而没有抽线,可以修改如下结点:
cat /sys/module/amvideo/parameters/bypass_ratio
Vpp 的处理能力会根据这个值算出来一个结果,根据结果来判断是否抽线,越大越不容易抽线,越小越容易抽线。
1.6.3 RDMA
cat /sys/module/rdma/parameters/enable
如果为 0,则为关闭,echo 1 > /sys/module/rdma/parameters/enable 看是否还抖动。
2、网络流播放问题分析
2.1 Dump 音视频流
2.1.1 APK 用 MediaPlayer 接口实现:
网络流遇到各种问题,首先需要 Dump 流,确认在本地能否复现问题。Dump 方法如下:
播放在线视频 dump 数据
1.创建 dump 文件夹 mkdir /data/tmp
2.修改 temp 文件夹属性
chmod 777 /data/tmp
3.设置 dump 数据类型
setprop media.libplayer.dumpmode x
x 的值:
1 ts,ps,rm 几种流的 raw data 从文件或网络读到的数据 dump
2 ts,ps,rm 几种流的 raw data 写入解码 buffer 的数据 dump
4 es 码流 video 数据,读数据 dump
8 es 码流 video 数据,写数据 dump
16 es 码流 audio 数据,读数据 dump
32 es 码流 audio 数据,写数据 dump
dump 到的数据存放在/data/tmp/pidn_dump_xx.dat 以 pidn 开头,可以区分是哪个线程 dump 出来的数据。
播放 ts 如果开 softdemux 后 dump 不到 ts 流,需要按 es 流 dump
2.1.2 APK 用 MediaCodec 或者 OMX 接口实现:
如果播放 APK 用的是 MediaCodec 或者 OMX 接口来实现的,那只能 dump 到 ES 数据,dump 接口如下:
media.omx.dumpRecv
是否 dump Omx codec 接收到的数据
media.omx.dumpCodec
是否 dump Omx codec 往解码 buffer 里面写的数据
media.omx.RecvDir
设置 dump Omx codec 接收到的数据写到哪个目录
media.omx.CodecDir
设置 dump Omx codec 往解码 buffer 数据写到哪个目录
media.omx.RecvName
设置 dump Omx codec 接收到的数据写到哪个文件里
media.omx.CodecName
设置 dump Omx codec 往解码 buffer 数据写到哪个文件里
例如:
如果需要 dump Omx Codec 接收到的数据到/data/tmp/es_aml_recv.0 同时还要 dump Omx Codec 往解码 buffer
数据到/data/tmp/es_aml_codec.0,对应的设置如下:
setprop media.omx.dumpRecv true
setprop media.omx.dumpCodec true
setprop media.omx.RecvDir /data/tmp
setprop media.omx.CodecDir /data/tmp
setprop media.omx.RecvName es_aml_recv.0
setprop media.omx.CodecName es_aml_codec.0
如果目录不存在记得创建,然后修改目录权限为 777。



cat  /sys/class/amstream/bufs
buf level:0xa3b423－－－－－目前可供解码的数据量 
buf space:0x33dd－－－－－－buffer 剩余空间

 /sys/class/video/                                 
 blackout_policy－保留最后一帧    
 frame_format －－帧格式    
 frame_height－－－视频高    
 frame_rate  －－－－帧率    
 frame_width－－－－视频宽        
 screen_mode－－－－显示模式    
 vframe_states－－－－帧 buffer循环状况

/sys/class/tsync/root@android:/ # ls -l /sys/class/tsync/                                   
debug_audio_pts-----－－查看audio pts 
debug_pts_checkin---－－查看checkin的pts 
debug_pts_checkout－－－查看checkout的pts 
debug_video_pts－－－－查看video pts 
enable－－－－－使能同步标志  
mode－－－－－目前同步状态 pts_
audio－－－当前audio pts 
pts_pcrscr－－－－当前系统时间 
pts_video－－－－－当前 video pts


#关同步echo 0 >/sys/class/tsync/enable
#屏蔽audiosetprop media.amplayer.noaudio 1
#屏蔽videosetprop media.amplayer.novideo 1

root@android:/ # cat /sys/class/audiodsp/dsp_working_status                            
dsp status  0x52756e－－－running 状态        
dsp sp  0x9c56ff04        dsp ilink1  0x6328        
dsp ilink2  0x6328        dsp blink  0x2de4        
dsp jeffies  0x329f       dsp pcm wp  0x9c559680－－－－指针是否在变化 
dsp pcm rp  0x9c5596a0－－－－－指正是否变化   
dsp pcm buffer level  0x7fa0－正常维持在32K的 pcm 供输出     
dsp pcm buffered size  0x2ea0        
dsp es read offset  0x13941

用于控制h.264解码的错误处理方式。对应寄存器AV_SCRATCH_F两个bit:bit 0: 
在某些错误情况下是否reset decoder来恢复解码，这种reset可能会引起大量丢帧。
1不做reset,0做reset.bit 1:是否需要把错误的帧传递出来。1表示需要不显示错误帧，
0表示显示错误帧（画面可能会有马赛克）。
一般来说，如果项目上不想看到任何的马赛克，就使用2。如果想尽可能地看到解码的内容，不管有没有马赛克，就用1。如果需要看到错误帧，但是希望有一定的纠错，就用0
。echo 0 > /sys/module/amvdec_h264/parameters/error_recovery_mode  // disable error recovery mode, show every frame even with mosaic
echo 3 > /sys/module/amvdec_h264/parameters/error_recovery_mode  // enable error recovery mode, skip error frames



mx取码流文件

1. mkdir /data/tmp
2. chmod 777 /data/tmp
3. setprop media.
    x value as follows:
	    1:raw data read (for ts, ps, rm read data from stream)
	    2:raw data write (for ts,ps, rm write data to avbuffer)
	    4:video es data read (for es video data, such as avi, mkv, mov, mp4 etc.)
	    8:video es data write
		    16:audio es data read
			    32:audio es data write
				dump file is under /data/tmp, and file name is pidn_dump_xx.dat, pidn is player_id, used to recognize different player threads.

mkdir /data/tmp;chmod 777 /data/tmp;setprop media.libplayer.dumpmode 2

logcat -c;logcat -s amffmpeg
wget www.xxx.xx


16:28:05
Hank 2015-7-29 16:28:05
//dump es software demux
mkdir /data/temp/
chmod 777 /data/temp/
setprop media.libplayer.dumppath /data/temp
setprop media.libplayer.dumpmode 8

//dump ts hw demux
setprop media.libplayer.dumppath /data/temp
setprop media.libplayer.dumpmode 2



加在 LOCAL_PACKAGE_NAME := HiveviewSetting 之前 
LOCAL_DEX_PREOPT := false

http://git.imagemagick.org/repos/ImageMagick

convert -resize 1920x1080! aaa.bmp bbb.bmp                      ! 强制转
convert -resize 1280x720! input.bmp output.bmp

convert -fill green -pointsize 40 -draw 'text 10,50 "charry.org"' inputpic outputpic      //在图片左上角添加 绿色 charr.org 字
import        截图
display
identify

重新提交代码

 git pull --rebase timehold-server s812-soundbar-0313


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

.schema
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

crossvpn
http://crossvpn.a.scjinlong.com/?p=374
账号，user:dev1313 password: 7955909



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

dmtracedump
sudo apt-get install graphviz



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


su:

https://github.com/ChainsDD/Superuser

https://github.com/ChainsDD/su-binary.git
http://blog.csdn.net/a332324956/article/details/9139927


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

rt-thread  source_code  https://github.com/RT-Thread/rt-thread.git
http://www.cnblogs.com/wzc0066/archive/2013/03/08/2949300.html

xbmc

git clone git://github.com/xbmc/xbmc.git
http://blog.csdn.net/zangcf/article/details/18049495


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

bootplayer url

am start -n com.android.gallery3d/com.android.gallery3d.app.MovieActivity "rtsp://123.147.112.181:554/04000001/01000000004000000000000000000285?AuthInfo=xxx"


tftp

/etc/default/tftpd-hpa
sudo /etc/init.d/tftpd-hpa restart

ubuntu tftp 127.0.0.1 -c get boot.img
xp     tftp -i 192.168.2.242 get boot.img
android  
get tftp -g -l boot.img 192.168.2.242

ftpget
ftpget -u ftp-common -p timehold 27.154.234.214 README




Busybox内置的tftpd, ftpd, telnetd, udhcpd, udhcpc配置 
http://blog.csdn.net/tqyou85/article/details/6240975



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



adb shell am broadcast 后面的参数有：

[-a <ACTION>]
[-d <DATA_URI>]
[-t <MIME_TYPE>] 
[-c <CATEGORY> [-c <CATEGORY>] ...] 
[-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...] 
[--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...] 
[-e|--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...] 
[-n <COMPONENT>]
[-f <FLAGS>] [<URI>]


adb shell am broadcast -a com.android.test --es test_string "this is test string" --ei test_int 100 --ez test_boolean true



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

sudo mount.cifs //10.28.8.15/nfsroot/hank.chen/kitkat /mnt/ -o username=hank.chen,password=Linux2010,rw,


10.28.8.22
hank.chen
Linux2010



transmission

https://github.com/shilingkai/transmission_android



================================================= issue ==================================================

一：编译源码不要生成odex 问题： 
    1： 禁止apk生成odex： 修改../build/core/package.mk   
	LOCAL_DEX_PREOPT := ture  ->  LOCAL_DEX_PREOPT := false
	2： 禁止jar包生成odex： 修改/build/core/java_library.mk  
	LOCAL_DEX_PREOPT := ture  ->  LOCAL_DEX_PREOPT := false  


二：修改framework之后直接make -j4编译后，模拟器运行不起来问题：
	进入../framework/base目录下执行： mm 先编译 framework，
	然后cd ../../退至工程根目录，执行 make systemimage  


=============================================================================================================
最近要把apk放进system/app下进行预装，现在可以运行，apk升级后也正常使用，但是当机子重启后apk就变回了系统原带的那个版本，我重现了现象，发现apk升级后是装在data/app下，而不是替换system/app下旧apk，重新开机后data/app下的apk就会删掉，系统用回自带的apk，就是不能升级使用，这个问题应该怎么解决？


apk的version号判断出问题，我的情况是升级前后的apk的version相同，所以有以下改法：
在frameworks/base/services/java/com/android/server/pm/PackageManagerService.java中的scanPackageLI会判断系统原带apk和升级后apk的versionCode，改为pkg.mVersionCode <= ps.versionCode（原来为 < ）；这样子系统重启，apk就不会还原。


uinput
http://blog.chinaunix.net/uid-25885064-id-3442484.html

android 添加按键

http://blog.itpub.net/7232789/viewspace-690479/

Vendxxxx

api/current.txt:27188:    field public static final int KEYCODE_SETTINGS = 176; // 0xb0
core/java/android/view/KeyEvent.java:516:    public static final int KEYCODE_SETTINGS        = 176;
core/java/android/view/KeyEvent.java:988:        names.append(KEYCODE_SETTINGS, "KEYCODE_SETTINGS");
core/res/res/values/attrs.xml:1523:        <enum name="KEYCODE_SETTINGS" value="176" />

 
Android 开关机动画的实现及支持MP4视频播放
http://blog.csdn.net/deeplee021/article/details/41042985

打开 adbd
http://blog.csdn.net/deeplee021/article/details/23546949

test wget
http://down02.putclub.com/virtual/backup/update/sest/201406/01/putclub.com_20140601apnews.mp3


HDMI SPDIF

if [ "$(getprop ubootenv.var.digitaudiooutput)" = "SPDIF passthrough" ] ; then
    echo 2 > /sys/class/audiodsp/digital_raw
elif [ "$(getprop ubootenv.var.digitaudiooutput)" = "HDMI passthrough" ] ; then  
    echo 3 > /sys/class/audiodsp/digital_raw
else
    echo 0 > /sys/class/audiodsp/digital_raw
fi


关闭hdmi的声音
root@m201:/sys/class/amhdmitx/amhdmitx0 # echo audio_off > config            
[34841.578955@0] hdmitx: audio: configure off

打开hdmi的声音
root@m201:/sys/class/amhdmitx/amhdmitx0 # echo audio_on > config
[34896.868518@0] hdmitx: audio: configure on


修改android 最大音量值

diff --git a/media/java/android/media/AudioService.java b/media/java/android/media/AudioService.java                                           
index 20a691b..601b327 100755
--- a/media/java/android/media/AudioService.java
+++ b/media/java/android/media/AudioService.java
@@ -213,7 +213,7 @@ public class AudioService extends IAudioService.Stub {
	         5,  // STREAM_VOICE_CALL
			 7,  // STREAM_SYSTEM
			 7,  // STREAM_RING
    -        15, // STREAM_MUSIC
    +        60, // STREAM_MUSIC
			 7,  // STREAM_ALARM
			 7,  // STREAM_NOTIFICATION
			15, // STREAM_BLUETOOTH_SCO

系统默认音量
index 9a591ca..d541dee 100755
	--- a/media/java/android/media/AudioManager.java
	+++ b/media/java/android/media/AudioManager.java
	@@ -231,7 +231,7 @@ public class AudioManager {
		         4,  // STREAM_VOICE_CALL
				          7,  // STREAM_SYSTEM
						           5,  // STREAM_RING
								   -        11, // STREAM_MUSIC
								   +        30, // STREAM_MUSIC
								            6,  // STREAM_ALARM
											         5,  // STREAM_NOTIFICATION
													          7,  // STREAM_BLUETOOTH_SCO


替换目录下所有文件中到某个字符串——sed结合grep

	例：要将目录 dir 下面所有文件中的 old 都修改成new，这样做：

	[cpp] view plaincopy

	    sed -i "s/old/new/g" `grep 'old' -rl dir`

改wifi 8189es驱动

xxxx.mk  WIFI_MODULE = 8189es 

init.amlogic.board.rc

Kernel.mk   修改拷贝ko文件

完整编译
/hardware/libhardware_legacy$ 

/external/wpa_supplicant_8$ 

cibn

b0:d5:9d:19:eb:a2


$(info $(shell cp -v $(LOCAL_PATH)/UpgradeLogo out/target/product/$(TARGET_PRODUCT)/system/bin/))

========================================
Android.mk 添加依赖的jar包
LOCAL_STATIC_JAVA_LIBRARIES := libksoap2 libSilentUpdate

include $(BUILD_PACKAGE)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := libksoap2:libs/ksoap2.jar libSilentUpdate:libs/SilentUpdate.jar

Android.mk 添加so 库到apk   
LOCAL_JNI_SHARED_LIBRARIES := libbleRuntime

include $(BUILD_PACKAGE)

LOCAL_PREBUILT_LIBS := libbleRuntime:libs/armeabi/libbleRuntime.so
=================================================
getprop dalvik.vm.heapsize  //如果build.prop里面没有heapsize这些值，可以用这个抓取默认值
setprop dalvik.vm.heapsize 256m  //设置

-----------------------    build.prop 部分内容 ---------------------

dalvik.vm.heapstartsize=8m
dalvik.vm.heapgrowthlimit=96m
dalvik.vm.heapsize=384m
dalvik.vm.heaputilization=0.25
dalvik.vm.heapidealfree=8388608
dalvik.vm.heapconcurrentstart=2097152
ro.setupwizard.mode=OPTIONAL
ro.com.google.gmsversion=4.1_r6
net.bt.name=Android
dalvik.vm.stack-trace-file=/data/anr/traces.txt

android 工具类
https://github.com/Trinea/android-common

https://github.com/Trinea/android-common.git

引入工程jar
out/target/common/obj/JAVA_LIBRARIES/framework_intermediates/classes.jar

uid :
init.rc
   # create hiveview dir
    mkdir /data/hiveview 0755 hiveview hiveview

core/java/android/os/Process.java:128:    public static final int HIVEVIEW_UID = 2100;
services/java/com/android/server/pm/PackageManagerService.java:980: 
					 mSettings.addSharedUserLPw("android.uid.hiveview", Process.HIVEVIEW_UID, ApplicationInfo.FLAG_SYSTEM);


frameworks/base/core/java/android/os/Process.java


sudo sysv-rc-conf 

HLS

git://git.videolan.org/x264.git

git clone https://github.com/johnf/m3u8-segmenter
segmenter -i test.ts -n 30 -p sample_test -m stream-test.m3u8 -u http://192.168.1.10:8080/hls/


GPIOAO_4

echo write 0x9fef1fab a 0x0024 > sys/class/amlogic/debug

制作jar cmd 

jar2dex='dx --dex --output=classes.dex'

jar -cvf xxx.jar class.jar

adb push xxx.jar /system/framework

开机第一次属性
ro.firstboot

iptv mount 

echo 1 > /sys/class/remount/need_remount

获取温度
cat /sys/class/thermal/thermal_zone0/temp


am broadcast -a com.kehwin.action.PARING_REMOTECONTROL

routeos  admin setup

kernel/debug/hid/0005\:04B4\:5673.0001/

/**@hide*/ 表示不对外公开api,但是系统内部是可以使用该注释标记的接口的.
蓝牙 http://blog.csdn.net/wenbo13579/article/details/47083923
s805/bionic/libc/kernel/common/linux/input.h   输入设备类型
#define BUS_PCI 0x01
#define BUS_ISAPNP 0x02
#define BUS_USB 0x03
#define BUS_HIL 0x04
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define BUS_BLUETOOTH 0x05
#define BUS_VIRTUAL 0x06
#define BUS_ISA 0x10
#define BUS_I8042 0x11
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define BUS_XTKBD 0x12
#define BUS_RS232 0x13
#define BUS_GAMEPORT 0x14

test wifi
insmod 要带参数.
ap6330
insmod /system/lib/dhd.ko firmware_path=/etc/wifi/40183/fw_bcm40183b2.bin nvram_path=/etc/wifi/40183/nvram.txt
ap6210
insmod /system/lib/dhd.ko firmware_path=/etc/wifi/40181/fw_bcm40181a2.bin nvram_path=/etc/wifi/40181/nvram.txt
ap6181
insmod /system/lib/dhd.ko firmware_path=/etc/wifi/40181/fw_bcm40181a2.bin nvram_path=/etc/wifi/40181/nvram.txt
执行上述命令后,
busybox ifconfig wlan0 up
wl scan
wl scanresults
就可以扫到ap了.

