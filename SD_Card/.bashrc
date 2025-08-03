# ~/.bashrc: executed by bash(1) for non-login shells.

export PS1='\[\033[1;32m\]\u@\h\[\033[0m\]:\[\033[1;34m\]\w\[\033[0m\]\$ '
umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
 export LS_OPTIONS='--color=auto'
 eval `dircolors`
 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -al'
 alias l='ls $LS_OPTIONS -lA'

# Some more alias to avoid making mistakes:
 alias rm='rm -i'
 alias cp='cp -i'
 alias mv='mv -i'
 alias vi='vim'

# Setting Term=xterm
 export TERM=xterm

# Export reset_uio0 script path
 export PATH=$PATH:/home/petalinux/uioctl/script
