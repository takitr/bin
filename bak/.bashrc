# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

JAVA_HOME=/opt/jdk1.6.0_45
CLASSPATH=$JAVA_HOME/lib:$JAVA_HOME/jre/lib
export JAVA_HOME CLASSPATH
export PATH=$PATH:$JAVA_HOME/bin

ARC_PREFIX=/opt/gnutools/arc-4.8-amlogic-20130904-r2
export PATH=$PATH:${ARC_PREFIX}/bin
ARM_GCC=/opt/CodeSourcery/Sourcery_G++_Lite
export PATH=$PATH:${ARM_GCC}/bin
ARMHF_PREFIX=/opt/gcc-linaro-arm-linux-gnueabihf
export PATH=$PATH:${ARMHF_PREFIX}/bin

export PATH=$PATH:/opt/gnutools/arc2.3-p0/elf32-4.2.1/bin/
export PATH=$PATH:/opt/gcc-linaro-arm-linux-gnueabihf/bin

export PATH=$PATH:/opt/arc-4.8-amlogic-20130904-r2/bin

alias xp='virtualbox --startvm xp'
alias o='nautilus'
alias openpdf='evince'
alias apk='aapt dump badging'
alias f='git log --pretty=oneline'
alias g18_th8='. ./build/envsetup.sh && lunch g18ref_th8-user'
alias g18_ref='. ./build/envsetup.sh && lunch g18ref-user'
alias m201='. ./build/envsetup.sh && lunch m201-user'
alias m201_th0='. ./build/envsetup.sh && lunch m201_th0-user'
alias m201_512_th1='. ./build/envsetup.sh && lunch m201_512m_th01-user && export BUILD_APK=B2B'
alias m201_512_th100='. ./build/envsetup.sh && lunch m201_512m_th100-user && export BUILD_APK=ZHONG_HUA_YUN_HE_SHUIPING'
alias m201_512_th8='. ./build/envsetup.sh && lunch m201_512m_th8-user'
alias m201_telecom='. build/envsetup.sh && export PROJECT_TYPE=telecom PROJECT_ID=m201 && lunch m201-user'
alias m201_unicom='. build/envsetup.sh;export PROJECT_TYPE=unicom PROJECT_ID=m201;lunch m201-user'
alias n200C='. build/envsetup.sh && lunch n200C-user'

alias ssh_timehold='ssh zhaoxinhai@timehold.f3322.org -p 8989'
alias ssh_timehold2='ssh zhaoxinhai@timehold.wicp.net -p 7878'
alias sftp_timehold2='sftp -P 7878 sftp-cibn@timehold.wicp.net'
alias ssh_aml='ssh hank.chen@10.28.8.15'
alias ssh_aml2='ssh hank.chen@10.28.8.20'

alias mk='device/amlogic/g18ref_th8/quick_build_kernel.sh'
alias sum='du -cms ./* | sort -rn | head -n 5'
alias signapk='java -jar /opt/signapk/signapk.jar /opt/signapk/platform.x509.pem /opt/signapk/platform.pk8'
alias eclipse='sudo /home2/adt-bundle-linux-x86_64-20140321/eclipse/eclipse'
export PATH=$PATH:/home/xinhai/bin:~/bin/dex2jar-0.0.9.15
export ANDROID_SDK_HOME=/home2/adt-bundle-linux-x86_64-20140321/sdk
export PATH=$PATH:$ANDROID_SDK_HOME/tools
export PATH=$PATH:$ANDROID_SDK_HOME/platform-tools
export PATH=$PATH:/home2/work/s805/ndk
export patch=~/amlogic/patch
export mx=~/amlogic/mx
export release=~/amlogic/release
export s805=/home2/work/s805
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
ccache -M 20G

export BOARD_VENDOR=TW
#export BOARD_VENDOR=TW_SECURE
#set wifi hardware for zhuoyi
#export BUILD_APK=B2C 
export BUILD_APK=ZHONG_HUA_YUN_HE
#export BUILD_APK=QUAN_ZHOU_DIAN_XIN
#export TARGET_USE_SECURITY_MODE=ture
